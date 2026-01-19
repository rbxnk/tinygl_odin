package tinygl_odin

foreign import lib "libTinyGL.a"
_ :: lib

ZB_Z_BITS            :: 16
ZB_POINT_Z_FRAC_BITS :: 14

/* The corrected mult mask prevents a bug relating to color interp.
* It is also why the color bit depth is so damn high.
*/
COLOR_MULT_MASK           :: (0xff0000)
COLOR_CORRECTED_MULT_MASK :: (0xfe0000)
COLOR_MASK                :: (0xffffff)
COLOR_MIN_MULT            :: (0x00ffff)
COLOR_SHIFT               :: 16

/* display modes */
ZB_MODE_5R6G5B :: 1   /* true color 16 bits */
ZB_MODE_INDEX  :: 2   /* color index 8 bits */
ZB_MODE_RGBA   :: 3   /* 32 bit ABGR mode */
ZB_MODE_RGB24  :: 4   /* 24 bit rgb mode */
ZB_NB_COLORS   :: 225 /* number of colors for 8 bit display */

PIXEL :: GLuint

PSZB  :: 4
PSZSH :: 5

ZBDirtyRect :: struct {
	xmin, ymin, xmax, ymax: GLint,
	valid:                  GLubyte, /* 1 if dirty region is set, 0 otherwise */
}

ZBuffer :: struct {
	zbuf:            ^GLushort,
	pbuf:            ^PIXEL,
	current_texture: ^PIXEL,

	/* point size */
	pointsize:                 GLfloat,
	blendeq, sfactor, dfactor: GLenum,
	enable_blend:              GLint,
	xsize, ysize:              GLint,
	linesize:                  GLint, /* line size, in bytes */

	/* depth */
	depth_test:             GLint,
	depth_write:            GLint,
	frame_buffer_allocated: GLubyte,
	dirty_rect:             ZBDirtyRect,
}

ZBufferPoint :: struct {
	x, y, z: GLint,   /* integer coordinates in the zbuffer */
	s, t:    GLint,   /* coordinates for the mapping */
	r, g, b: GLint,   /* color indexes */
	sz, tz:  GLfloat, /* temporary coordinates for mapping */
}

@(default_calling_convention="c")
foreign lib {
	/* zbuffer.c */
	ZB_open  :: proc(xsize: i32, ysize: i32, mode: i32, frame_buffer: rawptr) -> ^ZBuffer ---
	ZB_close :: proc(zb: ^ZBuffer) ---

	/* Returns 0 on success, -1 on allocation failure (original state preserved) */
	ZB_resize :: proc(zb: ^ZBuffer, frame_buffer: rawptr, xsize: GLint, ysize: GLint) -> GLint ---
	ZB_clear  :: proc(zb: ^ZBuffer, clear_z: GLint, z: GLint, clear_color: GLint, r: GLint, g: GLint, b: GLint) ---

	/* linesize is in BYTES */
	ZB_copyFrameBuffer :: proc(zb: ^ZBuffer, buf: rawptr, linesize: GLint) ---
	ZB_markDirty       :: proc(zb: ^ZBuffer, xmin: GLint, ymin: GLint, xmax: GLint, ymax: GLint) ---
	ZB_resetDirtyRect  :: proc(zb: ^ZBuffer) ---
	ZB_markFullDirty   :: proc(zb: ^ZBuffer) ---

	/*
	void ZB_initDither(ZBuffer *zb,GLint nb_colors,
	unsigned char *color_indexes,GLint *color_table);
	void ZB_closeDither(ZBuffer *zb);
	void ZB_ditherFrameBuffer(ZBuffer *zb,unsigned char *dest,
	GLint linesize);
	*/
	/* zline.c */
	ZB_plot   :: proc(zb: ^ZBuffer, p: ^ZBufferPoint) ---
	ZB_line   :: proc(zb: ^ZBuffer, p1: ^ZBufferPoint, p2: ^ZBufferPoint) ---
	ZB_line_z :: proc(zb: ^ZBuffer, p1: ^ZBufferPoint, p2: ^ZBufferPoint) ---

	/* ztriangle.c */
	ZB_setTexture                :: proc(zb: ^ZBuffer, texture: ^PIXEL) ---
	ZB_fillTriangleFlat          :: proc(zb: ^ZBuffer, p1: ^ZBufferPoint, p2: ^ZBufferPoint, p3: ^ZBufferPoint) ---
	ZB_fillTriangleFlatNOBLEND   :: proc(zb: ^ZBuffer, p1: ^ZBufferPoint, p2: ^ZBufferPoint, p3: ^ZBufferPoint) ---
	ZB_fillTriangleSmooth        :: proc(zb: ^ZBuffer, p1: ^ZBufferPoint, p2: ^ZBufferPoint, p3: ^ZBufferPoint) ---
	ZB_fillTriangleSmoothNOBLEND :: proc(zb: ^ZBuffer, p1: ^ZBufferPoint, p2: ^ZBufferPoint, p3: ^ZBufferPoint) ---

	/*
	This function goes unused and is removed by Gek.
	void ZB_fillTriangleMapping(ZBuffer *zb,
	ZBufferPoint *p1,ZBufferPoint *p2,ZBufferPoint *p3);
	*/
	ZB_fillTriangleMappingPerspective        :: proc(zb: ^ZBuffer, p0: ^ZBufferPoint, p1: ^ZBufferPoint, p2: ^ZBufferPoint) ---
	ZB_fillTriangleMappingPerspectiveNOBLEND :: proc(zb: ^ZBuffer, p0: ^ZBufferPoint, p1: ^ZBufferPoint, p2: ^ZBufferPoint) ---
}

ZB_fillTriangleFunc :: proc "c" (^ZBuffer, ^ZBufferPoint, ^ZBufferPoint, ^ZBufferPoint)

@(default_calling_convention="c")
foreign lib {
	/* memory.c */
	gl_free   :: proc(p: rawptr) ---
	gl_malloc :: proc(size: GLint) -> rawptr ---
	gl_zalloc :: proc(size: GLint) -> rawptr ---
}

