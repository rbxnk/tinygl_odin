package sample

import tgl ".."
import "core:math"
import "core:mem"
import sdl "vendor:sdl3"

WIDTH :: 640
HEIGHT :: 480

init :: proc() -> ^tgl.ZBuffer {
	tgl_buf := tgl.ZB_open(WIDTH, HEIGHT, tgl.ZB_MODE_RGBA, nil)
	tgl.Init(tgl_buf)

	aspect := f64(WIDTH) / f64(HEIGHT)
	top := math.tan_f64(50 * math.PI / 360.0) * 0.5
	right := top * aspect

	tgl.MatrixMode(tgl.GL_PROJECTION)
	tgl.LoadIdentity()
	tgl.Frustum(-right, right, -top, top, 0.5, 500.0)

	tgl.MatrixMode(tgl.GL_MODELVIEW)
	tgl.LoadIdentity()
	tgl.Translatef(0, 0, -5)

	return tgl_buf
}

cleanup :: proc(tgl_buf: ^tgl.ZBuffer) {
	tgl.ZB_close(tgl_buf)
	tgl.Close()
}

frame :: proc() {
	tgl.ClearColor(0, 0, 0, 1)
	tgl.Clear(tgl.GL_COLOR_BUFFER_BIT | tgl.GL_DEPTH_BUFFER_BIT)

	tgl.Rotatef(-1, 0, 1, 0)

	tgl.Begin(tgl.GL_TRIANGLES)

	tgl.Color3f(1, 0, 0)
	tgl.Vertex3f(-1, -1, 0)

	tgl.Color3f(0, 1, 0)
	tgl.Vertex3f(1, -1, 0)

	tgl.Color3f(0, 0, 1)
	tgl.Vertex3f(0, 1, 0)

	tgl.End()
}

main :: proc() {
	tgl_buf := init()
	defer cleanup(tgl_buf)

	if (!sdl.Init({.VIDEO})) {
		return
	}
	defer sdl.Quit()

	window: ^sdl.Window
	renderer: ^sdl.Renderer
	if !sdl.CreateWindowAndRenderer(
		"tinygl sample",
		WIDTH,
		HEIGHT,
		{.RESIZABLE},
		&window,
		&renderer,
	) {
		return
	}
	defer sdl.DestroyRenderer(renderer)
	defer sdl.DestroyWindow(window)

	sdl.SetRenderVSync(renderer, sdl.RENDERER_VSYNC_ADAPTIVE)
	sdl.SetRenderLogicalPresentation(renderer, WIDTH, HEIGHT, .INTEGER_SCALE)

	tex := sdl.CreateTexture(renderer, .BGRA32, .STREAMING, WIDTH, HEIGHT)
	sdl.SetTextureBlendMode(tex, sdl.BLENDMODE_NONE)

	exit := false
	for {
		for event: sdl.Event; sdl.PollEvent(&event); {
			#partial switch event.type {
			case .QUIT:
				exit = true
				break
			case .WINDOW_RESIZED:
				shrink := event.window.data1 < WIDTH || event.window.data2 < HEIGHT
				sdl.SetRenderLogicalPresentation(
					renderer,
					WIDTH,
					HEIGHT,
					.LETTERBOX if shrink else .INTEGER_SCALE,
				)
			}
		}

		if exit {
			break
		}

		frame()

		pixels: rawptr
		pitch: i32
		if !sdl.LockTexture(tex, nil, &pixels, &pitch) {
			return
		}
		mem.copy(pixels, tgl_buf.pbuf, WIDTH * HEIGHT * 4)
		sdl.UnlockTexture(tex)

		sdl.SetRenderDrawColor(renderer, 0, 0, 0, 255)
		sdl.RenderClear(renderer)

		r: sdl.FRect
		r.x = 0
		r.y = 0
		r.w = WIDTH
		r.h = HEIGHT
		sdl.RenderTexture(renderer, tex, nil, &r)

		sdl.RenderPresent(renderer)
	}
}
