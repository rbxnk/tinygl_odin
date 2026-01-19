package tinygl_odin

foreign import lib "libTinyGL.a"
_ :: lib

/* prefix the OpenGL function names with "t" to avoid conflicts with * system
* OpenGL definitions
*/
TGL_PREFIX :: 1

/*
* The following constants come from Mesa 3D Graphics Library.
*/
COMPILETIME_TINYGL_COMPAT_TEST     :: 0
GL_VERSION_1_1                     :: 1
GL_BYTE                            :: 5120
GL_SHORT                           :: 5122
GL_UNSIGNED_SHORT                  :: 5123
GL_INT                             :: 5124
GL_FALSE                           :: 0
GL_FLOAT                           :: 5126
GL_DOUBLE                          :: 5130
GL_2_BYTES                         :: 5127
GL_3_BYTES                         :: 5128
GL_4_BYTES                         :: 5129
GL_TRUE                            :: 1
GL_UNSIGNED_INT_8_8_8_8            :: 5131
GL_LINES                           :: 1
GL_POINTS                          :: 0
GL_LINE_STRIP                      :: 3
GL_LINE_LOOP                       :: 2
GL_TRIANGLES                       :: 4
GL_TRIANGLE_STRIP                  :: 5
GL_TRIANGLE_FAN                    :: 6
GL_QUADS                           :: 7
GL_UNSIGNED_BYTE                   :: 5121
GL_POLYGON                         :: 9
GL_EDGE_FLAG                       :: 2883
GL_STATIC_DRAW                     :: 35044
GL_VERTEX_ARRAY                    :: 32884
GL_VERTEX_BUFFER                   :: 32884
GL_NORMAL_ARRAY                    :: 32885
GL_NORMAL_BUFFER                   :: 32885
GL_COLOR_ARRAY                     :: 32886
GL_COLOR_BUFFER                    :: 32886
GL_INDEX_ARRAY                     :: 32887
GL_TEXTURE_COORD_ARRAY             :: 32888
GL_TEXTURE_COORD_BUFFER            :: 32888
GL_EDGE_FLAG_ARRAY                 :: 32889
GL_VERTEX_ARRAY_SIZE               :: 32890
GL_VERTEX_ARRAY_TYPE               :: 32891
GL_UNSIGNED_INT                    :: 5125
GL_VERTEX_ARRAY_COUNT              :: 32893
GL_NORMAL_ARRAY_TYPE               :: 32894
GL_NORMAL_ARRAY_STRIDE             :: 32895
GL_NORMAL_ARRAY_COUNT              :: 32896
GL_COLOR_ARRAY_SIZE                :: 32897
GL_COLOR_ARRAY_TYPE                :: 32898
GL_COLOR_ARRAY_STRIDE              :: 32899
GL_COLOR_ARRAY_COUNT               :: 32900
GL_INDEX_ARRAY_TYPE                :: 32901
GL_INDEX_ARRAY_STRIDE              :: 32902
GL_INDEX_ARRAY_COUNT               :: 32903
GL_TEXTURE_COORD_ARRAY_SIZE        :: 32904
GL_TEXTURE_COORD_ARRAY_TYPE        :: 32905
GL_TEXTURE_COORD_ARRAY_STRIDE      :: 32906
GL_TEXTURE_COORD_ARRAY_COUNT       :: 32907
GL_EDGE_FLAG_ARRAY_STRIDE          :: 32908
GL_EDGE_FLAG_ARRAY_COUNT           :: 32909
GL_VERTEX_ARRAY_POINTER            :: 32910
GL_NORMAL_ARRAY_POINTER            :: 32911
GL_COLOR_ARRAY_POINTER             :: 32912
GL_INDEX_ARRAY_POINTER             :: 32913
GL_TEXTURE_COORD_ARRAY_POINTER     :: 32914
GL_EDGE_FLAG_ARRAY_POINTER         :: 32915
GL_V2F                             :: 10784
GL_V3F                             :: 10785
GL_UNSIGNED_SHORT_5_6_5            :: 5130
GL_C4UB_V3F                        :: 10787
GL_C3F_V3F                         :: 10788
GL_N3F_V3F                         :: 10789
GL_C4F_N3F_V3F                     :: 10790
GL_T2F_V3F                         :: 10791
GL_T4F_V4F                         :: 10792
GL_T2F_C4UB_V3F                    :: 10793
GL_T2F_C3F_V3F                     :: 10794
GL_T2F_N3F_V3F                     :: 10795
GL_T2F_C4F_N3F_V3F                 :: 10796
GL_T4F_C4F_N3F_V4F                 :: 10797
GL_MATRIX_MODE                     :: 2976
GL_MODELVIEW                       :: 5888
GL_PROJECTION                      :: 5889
GL_TEXTURE                         :: 5890
GL_POINT_SMOOTH                    :: 2832
GL_POINT_SIZE                      :: 2833
GL_POINT_SIZE_GRANULARITY          :: 2835
GL_POINT_SIZE_RANGE                :: 2834
GL_LINE_SMOOTH                     :: 2848
GL_LINE_STIPPLE                    :: 2852
GL_LINE_STIPPLE_PATTERN            :: 2853
GL_LINE_STIPPLE_REPEAT             :: 2854
GL_LINE_WIDTH                      :: 2849
GL_LINE_WIDTH_GRANULARITY          :: 2851
GL_LINE_WIDTH_RANGE                :: 2850
GL_POINT                           :: 6912
GL_LINE                            :: 6913
GL_FILL                            :: 6914
GL_CCW                             :: 2305
GL_CW                              :: 2304
GL_FRONT                           :: 1028
GL_BACK                            :: 1029
GL_CULL_FACE                       :: 2884
GL_CULL_FACE_MODE                  :: 2885
GL_POLYGON_SMOOTH                  :: 2881
GL_POLYGON_STIPPLE                 :: 2882
GL_FRONT_FACE                      :: 2886
GL_POLYGON_MODE                    :: 2880
GL_POLYGON_OFFSET_FACTOR           :: 12344
GL_POLYGON_OFFSET_UNITS            :: 10752
GL_QUAD_STRIP                      :: 8
GL_POLYGON_OFFSET_LINE             :: 10754
GL_POLYGON_OFFSET_FILL             :: 32823
GL_COMPILE                         :: 4864
GL_COMPILE_AND_EXECUTE             :: 4865
GL_LIST_BASE                       :: 2866
GL_LIST_INDEX                      :: 2867
GL_LIST_MODE                       :: 2864
GL_POLYGON_MAX_VERTEX              :: 61441
GL_MAX_BUFFERS                     :: 61442
GL_TEXTURE_HASH_TABLE_SIZE         :: 61443
GL_MAX_TEXTURE_LEVELS              :: 61444
GL_MAX_SPECULAR_BUFFERS            :: 61445
GL_MAX_DISPLAY_LISTS               :: 61446
GL_ERROR_CHECK_LEVEL               :: 61447
GL_IS_SPECULAR_ENABLED             :: 61448
GL_NEVER                           :: 512
GL_LESS                            :: 513
GL_GEQUAL                          :: 518
GL_LEQUAL                          :: 515
GL_GREATER                         :: 516
GL_NOTEQUAL                        :: 517
GL_EQUAL                           :: 514
GL_ALWAYS                          :: 519
GL_DEPTH_TEST                      :: 2929
GL_DEPTH_BITS                      :: 3414
GL_DEPTH_CLEAR_VALUE               :: 2931
GL_DEPTH_FUNC                      :: 2932
GL_DEPTH_RANGE                     :: 2928
GL_DEPTH_WRITEMASK                 :: 2930
GL_DEPTH_COMPONENT                 :: 6402
GL_LIGHTING                        :: 2896
GL_LIGHT0                          :: 16384
GL_LIGHT1                          :: 16385
GL_LIGHT2                          :: 16386
GL_LIGHT3                          :: 16387
GL_LIGHT4                          :: 16388
GL_LIGHT5                          :: 16389
GL_LIGHT6                          :: 16390
GL_LIGHT7                          :: 16391
GL_LIGHT8                          :: 16392
GL_LIGHT9                          :: 16393
GL_LIGHT10                         :: 16394
GL_LIGHT11                         :: 16395
GL_LIGHT12                         :: 16396
GL_LIGHT13                         :: 16397
GL_LIGHT14                         :: 16398
GL_LIGHT15                         :: 16399
GL_SPOT_EXPONENT                   :: 4613
GL_SPOT_CUTOFF                     :: 4614
GL_CONSTANT_ATTENUATION            :: 4615
GL_LINEAR_ATTENUATION              :: 4616
GL_QUADRATIC_ATTENUATION           :: 4617
GL_AMBIENT                         :: 4608
GL_DIFFUSE                         :: 4609
GL_SPECULAR                        :: 4610
GL_SHININESS                       :: 5633
GL_EMISSION                        :: 5632
GL_POSITION                        :: 4611
GL_SPOT_DIRECTION                  :: 4612
GL_AMBIENT_AND_DIFFUSE             :: 5634
GL_COLOR_INDEXES                   :: 5635
GL_LIGHT_MODEL_TWO_SIDE            :: 2898
GL_LIGHT_MODEL_LOCAL_VIEWER        :: 2897
GL_LIGHT_MODEL_AMBIENT             :: 2899
GL_FRONT_AND_BACK                  :: 1032
GL_SHADE_MODEL                     :: 2900
GL_FLAT                            :: 7424
GL_VERTEX_ARRAY_STRIDE             :: 32892
GL_COLOR_MATERIAL                  :: 2903
GL_COLOR_MATERIAL_FACE             :: 2901
GL_COLOR_MATERIAL_PARAMETER        :: 2902
GL_NORMALIZE                       :: 2977
GL_CLIP_PLANE0                     :: 12288
GL_CLIP_PLANE1                     :: 12289
GL_CLIP_PLANE2                     :: 12290
GL_CLIP_PLANE3                     :: 12291
GL_CLIP_PLANE4                     :: 12292
GL_CLIP_PLANE5                     :: 12293
GL_ACCUM_RED_BITS                  :: 3416
GL_ACCUM_GREEN_BITS                :: 3417
GL_ACCUM_BLUE_BITS                 :: 3418
GL_ACCUM_ALPHA_BITS                :: 3419
GL_ACCUM_CLEAR_VALUE               :: 2944
GL_ACCUM                           :: 256
GL_ADD                             :: 260
GL_LOAD                            :: 257
GL_MULT                            :: 259
GL_RETURN                          :: 258
GL_ALPHA_TEST                      :: 3008
GL_ALPHA_TEST_REF                  :: 3010
GL_ALPHA_TEST_FUNC                 :: 3009
GL_BLEND                           :: 3042
GL_BLEND_SRC                       :: 3041
GL_BLEND_DST                       :: 3040
GL_ZERO                            :: 0
GL_ONE                             :: 1
GL_SRC_COLOR                       :: 768
GL_ONE_MINUS_SRC_COLOR             :: 769
GL_DST_COLOR                       :: 774
GL_ONE_MINUS_DST_COLOR             :: 775
GL_SRC_ALPHA                       :: 770
GL_ONE_MINUS_SRC_ALPHA             :: 771
GL_DST_ALPHA                       :: 772
GL_ONE_MINUS_DST_ALPHA             :: 773
GL_SRC_ALPHA_SATURATE              :: 776
GL_CONSTANT_COLOR                  :: 32769
GL_ONE_MINUS_CONSTANT_COLOR        :: 32770
GL_CONSTANT_ALPHA                  :: 32771
GL_ONE_MINUS_CONSTANT_ALPHA        :: 32772
GL_FEEDBACK                        :: 7169
GL_RENDER                          :: 7168
GL_SELECT                          :: 7170
GL_2D                              :: 1536
GL_3D                              :: 1537
GL_3D_COLOR                        :: 1538
GL_3D_COLOR_TEXTURE                :: 1539
GL_4D_COLOR_TEXTURE                :: 1540
GL_POINT_TOKEN                     :: 1793
GL_LINE_TOKEN                      :: 1794
GL_LINE_RESET_TOKEN                :: 1799
GL_POLYGON_TOKEN                   :: 1795
GL_BITMAP_TOKEN                    :: 1796
GL_DRAW_PIXEL_TOKEN                :: 1797
GL_COPY_PIXEL_TOKEN                :: 1798
GL_PASS_THROUGH_TOKEN              :: 1792
GL_FOG                             :: 2912
GL_FOG_MODE                        :: 2917
GL_FOG_DENSITY                     :: 2914
GL_FOG_COLOR                       :: 2918
GL_FOG_INDEX                       :: 2913
GL_FOG_START                       :: 2915
GL_FOG_END                         :: 2916
GL_LINEAR                          :: 9729
GL_EXP                             :: 2048
GL_EXP2                            :: 2049
GL_LOGIC_OP                        :: 3057
GL_LOGIC_OP_MODE                   :: 3056
GL_CLEAR                           :: 5376
GL_SET                             :: 5391
GL_COPY                            :: 5379
GL_COPY_INVERTED                   :: 5388
GL_NOOP                            :: 5381
GL_INVERT                          :: 5386
GL_AND                             :: 5377
GL_NAND                            :: 5390
GL_OR                              :: 5383
GL_NOR                             :: 5384
GL_XOR                             :: 5382
GL_EQUIV                           :: 5385
GL_AND_REVERSE                     :: 5378
GL_AND_INVERTED                    :: 5380
GL_OR_REVERSE                      :: 5387
GL_OR_INVERTED                     :: 5389
GL_STENCIL_TEST                    :: 2960
GL_STENCIL_WRITEMASK               :: 2968
GL_STENCIL_BITS                    :: 3415
GL_STENCIL_FUNC                    :: 2962
GL_STENCIL_VALUE_MASK              :: 2963
GL_STENCIL_REF                     :: 2967
GL_STENCIL_FAIL                    :: 2964
GL_STENCIL_PASS_DEPTH_PASS         :: 2966
GL_STENCIL_PASS_DEPTH_FAIL         :: 2965
GL_STENCIL_CLEAR_VALUE             :: 2961
GL_STENCIL_INDEX                   :: 6401
GL_KEEP                            :: 7680
GL_REPLACE                         :: 7681
GL_INCR                            :: 7682
GL_DECR                            :: 7683
GL_NONE                            :: 0
GL_LEFT                            :: 1030
GL_RIGHT                           :: 1031
GL_FRONT_LEFT                      :: 1024
GL_FRONT_RIGHT                     :: 1025
GL_BACK_LEFT                       :: 1026
GL_BACK_RIGHT                      :: 1027
GL_AUX0                            :: 1033
GL_AUX1                            :: 1034
GL_C4UB_V2F                        :: 10786
GL_AUX3                            :: 1036
GL_COLOR_INDEX                     :: 6400
GL_RED                             :: 6403
GL_GREEN                           :: 6404
GL_BLUE                            :: 6405
GL_ALPHA                           :: 6406
GL_LUMINANCE                       :: 6409
GL_LUMINANCE_ALPHA                 :: 6410
GL_ALPHA_BITS                      :: 3413
GL_RED_BITS                        :: 3410
GL_GREEN_BITS                      :: 3411
GL_BLUE_BITS                       :: 3412
GL_INDEX_BITS                      :: 3409
GL_SUBPIXEL_BITS                   :: 3408
GL_AUX_BUFFERS                     :: 3072
GL_READ_BUFFER                     :: 3074
GL_DRAW_BUFFER                     :: 3073
GL_DOUBLEBUFFER                    :: 3122
GL_STEREO                          :: 3123
GL_BITMAP                          :: 6656
GL_COLOR                           :: 6144
GL_DEPTH                           :: 6145
GL_STENCIL                         :: 6146
GL_DITHER                          :: 3024
GL_RGB                             :: 6407
GL_RGBA                            :: 6408
GL_MAX_LIST_NESTING                :: 2865
GL_MAX_ATTRIB_STACK_DEPTH          :: 3381
GL_MAX_MODELVIEW_STACK_DEPTH       :: 3382
GL_MAX_NAME_STACK_DEPTH            :: 3383
GL_MAX_PROJECTION_STACK_DEPTH      :: 3384
GL_MAX_TEXTURE_STACK_DEPTH         :: 3385
GL_MAX_EVAL_ORDER                  :: 3376
GL_MAX_LIGHTS                      :: 3377
GL_MAX_CLIP_PLANES                 :: 3378
GL_MAX_TEXTURE_SIZE                :: 3379
GL_MAX_PIXEL_MAP_TABLE             :: 3380
GL_MAX_VIEWPORT_DIMS               :: 3386
GL_MAX_CLIENT_ATTRIB_STACK_DEPTH   :: 3387
GL_ATTRIB_STACK_DEPTH              :: 2992
GL_COLOR_CLEAR_VALUE               :: 3106
GL_COLOR_WRITEMASK                 :: 3107
GL_CURRENT_INDEX                   :: 2817
GL_CURRENT_COLOR                   :: 2816
GL_CURRENT_NORMAL                  :: 2818
GL_CURRENT_RASTER_COLOR            :: 2820
GL_CURRENT_RASTER_DISTANCE         :: 2825
GL_CURRENT_RASTER_INDEX            :: 2821
GL_CURRENT_RASTER_POSITION         :: 2823
GL_CURRENT_RASTER_TEXTURE_COORDS   :: 2822
GL_CURRENT_RASTER_POSITION_VALID   :: 2824
GL_CURRENT_TEXTURE_COORDS          :: 2819
GL_INDEX_CLEAR_VALUE               :: 3104
GL_INDEX_MODE                      :: 3120
GL_INDEX_WRITEMASK                 :: 3105
GL_MODELVIEW_MATRIX                :: 2982
GL_MODELVIEW_STACK_DEPTH           :: 2979
GL_NAME_STACK_DEPTH                :: 3440
GL_PROJECTION_MATRIX               :: 2983
GL_PROJECTION_STACK_DEPTH          :: 2980
GL_RENDER_MODE                     :: 3136
GL_RGBA_MODE                       :: 3121
GL_TEXTURE_MATRIX                  :: 2984
GL_TEXTURE_STACK_DEPTH             :: 2981
GL_VIEWPORT                        :: 2978
GL_AUTO_NORMAL                     :: 3456
GL_MAP1_COLOR_4                    :: 3472
GL_MAP1_GRID_DOMAIN                :: 3536
GL_MAP1_GRID_SEGMENTS              :: 3537
GL_MAP1_INDEX                      :: 3473
GL_MAP1_NORMAL                     :: 3474
GL_MAP1_TEXTURE_COORD_1            :: 3475
GL_MAP1_TEXTURE_COORD_2            :: 3476
GL_MAP1_TEXTURE_COORD_3            :: 3477
GL_MAP1_TEXTURE_COORD_4            :: 3478
GL_MAP1_VERTEX_3                   :: 3479
GL_MAP1_VERTEX_4                   :: 3480
GL_MAP2_COLOR_4                    :: 3504
GL_MAP2_GRID_DOMAIN                :: 3538
GL_MAP2_GRID_SEGMENTS              :: 3539
GL_MAP2_INDEX                      :: 3505
GL_MAP2_NORMAL                     :: 3506
GL_MAP2_TEXTURE_COORD_1            :: 3507
GL_MAP2_TEXTURE_COORD_2            :: 3508
GL_MAP2_TEXTURE_COORD_3            :: 3509
GL_MAP2_TEXTURE_COORD_4            :: 3510
GL_MAP2_VERTEX_3                   :: 3511
GL_MAP2_VERTEX_4                   :: 3512
GL_COEFF                           :: 2560
GL_DOMAIN                          :: 2562
GL_ORDER                           :: 2561
GL_FOG_HINT                        :: 3156
GL_LINE_SMOOTH_HINT                :: 3154
GL_PERSPECTIVE_CORRECTION_HINT     :: 3152
GL_POINT_SMOOTH_HINT               :: 3153
GL_POLYGON_SMOOTH_HINT             :: 3155
GL_DONT_CARE                       :: 4352
GL_FASTEST                         :: 4353
GL_NICEST                          :: 4354
GL_SCISSOR_TEST                    :: 3089
GL_SCISSOR_BOX                     :: 3088
GL_MAP_COLOR                       :: 3344
GL_MAP_STENCIL                     :: 3345
GL_INDEX_SHIFT                     :: 3346
GL_INDEX_OFFSET                    :: 3347
GL_RED_SCALE                       :: 3348
GL_RED_BIAS                        :: 3349
GL_GREEN_SCALE                     :: 3352
GL_GREEN_BIAS                      :: 3353
GL_BLUE_SCALE                      :: 3354
GL_BLUE_BIAS                       :: 3355
GL_ALPHA_SCALE                     :: 3356
GL_ALPHA_BIAS                      :: 3357
GL_DEPTH_SCALE                     :: 3358
GL_DEPTH_BIAS                      :: 3359
GL_PIXEL_MAP_S_TO_S_SIZE           :: 3249
GL_PIXEL_MAP_I_TO_I_SIZE           :: 3248
GL_PIXEL_MAP_I_TO_R_SIZE           :: 3250
GL_PIXEL_MAP_I_TO_G_SIZE           :: 3251
GL_PIXEL_MAP_I_TO_B_SIZE           :: 3252
GL_PIXEL_MAP_I_TO_A_SIZE           :: 3253
GL_PIXEL_MAP_R_TO_R_SIZE           :: 3254
GL_PIXEL_MAP_G_TO_G_SIZE           :: 3255
GL_PIXEL_MAP_B_TO_B_SIZE           :: 3256
GL_PIXEL_MAP_A_TO_A_SIZE           :: 3257
GL_PIXEL_MAP_S_TO_S                :: 3185
GL_PIXEL_MAP_I_TO_I                :: 3184
GL_PIXEL_MAP_I_TO_R                :: 3186
GL_PIXEL_MAP_I_TO_G                :: 3187
GL_PIXEL_MAP_I_TO_B                :: 3188
GL_PIXEL_MAP_I_TO_A                :: 3189
GL_PIXEL_MAP_R_TO_R                :: 3190
GL_PIXEL_MAP_G_TO_G                :: 3191
GL_PIXEL_MAP_B_TO_B                :: 3192
GL_PIXEL_MAP_A_TO_A                :: 3193
GL_PACK_ALIGNMENT                  :: 3333
GL_PACK_LSB_FIRST                  :: 3329
GL_PACK_ROW_LENGTH                 :: 3330
GL_PACK_SKIP_PIXELS                :: 3332
GL_PACK_SKIP_ROWS                  :: 3331
GL_PACK_SWAP_BYTES                 :: 3328
GL_UNPACK_ALIGNMENT                :: 3317
GL_UNPACK_LSB_FIRST                :: 3313
GL_UNPACK_ROW_LENGTH               :: 3314
GL_UNPACK_SKIP_PIXELS              :: 3316
GL_UNPACK_SKIP_ROWS                :: 3315
GL_UNPACK_SWAP_BYTES               :: 3312
GL_ZOOM_X                          :: 3350
GL_ZOOM_Y                          :: 3351
GL_TEXTURE_ENV                     :: 8960
GL_TEXTURE_ENV_MODE                :: 8704
GL_TEXTURE_1D                      :: 3552
GL_TEXTURE_2D                      :: 3553
GL_TEXTURE_WRAP_S                  :: 10242
GL_TEXTURE_WRAP_T                  :: 10243
GL_TEXTURE_MAG_FILTER              :: 10240
GL_TEXTURE_MIN_FILTER              :: 10241
GL_TEXTURE_ENV_COLOR               :: 8705
GL_TEXTURE_GEN_S                   :: 3168
GL_TEXTURE_GEN_T                   :: 3169
GL_TEXTURE_GEN_MODE                :: 9472
GL_TEXTURE_BORDER_COLOR            :: 4100
GL_TEXTURE_WIDTH                   :: 4096
GL_TEXTURE_HEIGHT                  :: 4097
GL_TEXTURE_BORDER                  :: 4101
GL_TEXTURE_COMPONENTS              :: 4099
GL_NEAREST_MIPMAP_NEAREST          :: 9984
GL_NEAREST_MIPMAP_LINEAR           :: 9986
GL_LINEAR_MIPMAP_NEAREST           :: 9985
GL_LINEAR_MIPMAP_LINEAR            :: 9987
GL_OBJECT_LINEAR                   :: 9217
GL_OBJECT_PLANE                    :: 9473
GL_EYE_LINEAR                      :: 9216
GL_EYE_PLANE                       :: 9474
GL_SPHERE_MAP                      :: 9218
GL_DECAL                           :: 8449
GL_MODULATE                        :: 8448
GL_POLYGON_OFFSET_POINT            :: 10753
GL_SMOOTH                          :: 7425
GL_AUX2                            :: 1035
GL_NEAREST                         :: 9728
GL_T                               :: 8193
GL_CLAMP                           :: 10496
GL_Q                               :: 8195
GL_TEXTURE_GEN_R                   :: 3170
GL_TEXTURE_GEN_Q                   :: 3171
GL_REPEAT                          :: 10497
GL_PROXY_TEXTURE_2D                :: 32868
GL_TEXTURE_PRIORITY                :: 32870
GL_TEXTURE_RESIDENT                :: 32871
GL_TEXTURE_1D_BINDING              :: 32872
GL_TEXTURE_2D_BINDING              :: 32873
GL_S                               :: 8192
GL_ALPHA8                          :: 32828
GL_ALPHA12                         :: 32829
GL_ALPHA16                         :: 32830
GL_LUMINANCE4                      :: 32831
GL_LUMINANCE8                      :: 32832
GL_LUMINANCE12                     :: 32833
GL_LUMINANCE16                     :: 32834
GL_LUMINANCE4_ALPHA4               :: 32835
GL_LUMINANCE6_ALPHA2               :: 32836
GL_R                               :: 8194
GL_LUMINANCE12_ALPHA4              :: 32838
GL_LUMINANCE12_ALPHA12             :: 32839
GL_LUMINANCE16_ALPHA16             :: 32840
GL_INTENSITY                       :: 32841
GL_INTENSITY4                      :: 32842
GL_INTENSITY8                      :: 32843
GL_INTENSITY12                     :: 32844
GL_INTENSITY16                     :: 32845
GL_R3_G3_B2                        :: 10768
GL_RGB4                            :: 32847
GL_RGB5                            :: 32848
GL_RGB8                            :: 32849
GL_RGB10                           :: 32850
GL_RGB12                           :: 32851
GL_RGB16                           :: 32852
GL_PROXY_TEXTURE_1D                :: 32867
GL_RGBA4                           :: 32854
GL_RGB5_A1                         :: 32855
GL_RGBA8                           :: 32856
GL_RGB10_A2                        :: 32857
GL_RGBA12                          :: 32858
GL_RGBA16                          :: 32859
GL_VENDOR                          :: 7936
GL_RENDERER                        :: 7937
GL_VERSION                         :: 7938
GL_EXTENSIONS                      :: 7939
GL_LICENSE                         :: 7940
GL_NO_ERROR                        :: 0
GL_INVALID_VALUE                   :: 1281
GL_INVALID_ENUM                    :: 1280
GL_INVALID_OPERATION               :: 1282
GL_STACK_OVERFLOW                  :: 1283
GL_STACK_UNDERFLOW                 :: 1284
GL_OUT_OF_MEMORY                   :: 1285
GL_CONSTANT_COLOR_EXT              :: 32769
GL_ONE_MINUS_CONSTANT_COLOR_EXT    :: 32770
GL_CONSTANT_ALPHA_EXT              :: 32771
GL_ONE_MINUS_CONSTANT_ALPHA_EXT    :: 32772
GL_BLEND_EQUATION_EXT              :: 32777
GL_BLEND_EQUATION                  :: 32777
GL_MIN_EXT                         :: 32775
GL_ALPHA4                          :: 32827
GL_FUNC_ADD_EXT                    :: 32774
GL_FUNC_ADD                        :: 32774
GL_FUNC_SUBTRACT_EXT               :: 32778
GL_FUNC_SUBTRACT                   :: 32778
GL_FUNC_REVERSE_SUBTRACT_EXT       :: 32779
GL_FUNC_REVERSE_SUBTRACT           :: 32779
GL_BLEND_COLOR_EXT                 :: 32773
GL_POLYGON_OFFSET_EXT              :: 32823
GL_POLYGON_OFFSET_FACTOR_EXT       :: 32824
GL_POLYGON_OFFSET_BIAS_EXT         :: 32825
GL_ARRAY_BUFFER                    :: 34962
GL_VERTEX_ARRAY_EXT                :: 32884
GL_NORMAL_ARRAY_EXT                :: 32885
GL_COLOR_ARRAY_EXT                 :: 32886
GL_INDEX_ARRAY_EXT                 :: 32887
GL_TEXTURE_COORD_ARRAY_EXT         :: 32888
GL_EDGE_FLAG_ARRAY_EXT             :: 32889
GL_VERTEX_ARRAY_SIZE_EXT           :: 32890
GL_VERTEX_ARRAY_TYPE_EXT           :: 32891
GL_VERTEX_ARRAY_STRIDE_EXT         :: 32892
GL_VERTEX_ARRAY_COUNT_EXT          :: 32893
GL_NORMAL_ARRAY_TYPE_EXT           :: 32894
GL_NORMAL_ARRAY_STRIDE_EXT         :: 32895
GL_NORMAL_ARRAY_COUNT_EXT          :: 32896
GL_COLOR_ARRAY_SIZE_EXT            :: 32897
GL_COLOR_ARRAY_TYPE_EXT            :: 32898
GL_COLOR_ARRAY_STRIDE_EXT          :: 32899
GL_COLOR_ARRAY_COUNT_EXT           :: 32900
GL_INDEX_ARRAY_TYPE_EXT            :: 32901
GL_INDEX_ARRAY_STRIDE_EXT          :: 32902
GL_INDEX_ARRAY_COUNT_EXT           :: 32903
GL_TEXTURE_COORD_ARRAY_SIZE_EXT    :: 32904
GL_TEXTURE_COORD_ARRAY_TYPE_EXT    :: 32905
GL_TEXTURE_COORD_ARRAY_STRIDE_EXT  :: 32906
GL_TEXTURE_COORD_ARRAY_COUNT_EXT   :: 32907
GL_EDGE_FLAG_ARRAY_STRIDE_EXT      :: 32908
GL_EDGE_FLAG_ARRAY_COUNT_EXT       :: 32909
GL_VERTEX_ARRAY_POINTER_EXT        :: 32910
GL_NORMAL_ARRAY_POINTER_EXT        :: 32911
GL_COLOR_ARRAY_POINTER_EXT         :: 32912
GL_INDEX_ARRAY_POINTER_EXT         :: 32913
GL_LUMINANCE8_ALPHA8               :: 32837
GL_RGBA2                           :: 32853
GL_MAX_EXT                         :: 32776
GL_TEXTURE_COORD_ARRAY_POINTER_EXT :: 32914
GL_EDGE_FLAG_ARRAY_POINTER_EXT     :: 32915

GLTEXTSIZE :: enum u32 {
	TEXT_SIZE8x8     = 1,
	TEXT_SIZE16x16   = 2,
	TEXT_SIZE24x24   = 3,
	TEXT_SIZE32x32   = 4,
	TEXT_SIZE40x40   = 5,
	TEXT_SIZE48x48   = 6,
	TEXT_SIZE56x56   = 7,
	TEXT_SIZE64x64   = 8,
	TEXT_SIZE72x72   = 9,
	TEXT_SIZE80x80   = 10,
	TEXT_SIZE88x88   = 11,
	TEXT_SIZE96x96   = 12,
	TEXT_SIZE104x104 = 13,
	TEXT_SIZE112x112 = 14,
	TEXT_SIZE120x120 = 15,
	TEXT_SIZE128x128 = 16,
	MAX_TEXT_SIZE    = 16,
}

GL_POLYGON_BIT         :: 8
GL_LINE_BIT            :: 4
GL_POLYGON_STIPPLE_BIT :: 16
GL_LIGHTING_BIT        :: 64
GL_FOG_BIT             :: 128
GL_DEPTH_BUFFER_BIT    :: 256
GL_ACCUM_BUFFER_BIT    :: 512
GL_STENCIL_BUFFER_BIT  :: 1024
GL_CURRENT_BIT         :: 1
GL_TRANSFORM_BIT       :: 4096
GL_ENABLE_BIT          :: 8192
GL_COLOR_BUFFER_BIT    :: 16384
GL_HINT_BIT            :: 32768
GL_EVAL_BIT            :: 65536
GL_LIST_BIT            :: 131072
GL_TEXTURE_BIT         :: 262144
GL_SCISSOR_BIT         :: 524288
GL_ALL_ATTRIB_BITS     :: 1048575
GL_POINT_BIT           :: 2
GL_PIXEL_MODE_BIT      :: 32
GL_VIEWPORT_BIT        :: 2048

/* some types */
GLvoid    :: struct {}
GLboolean :: u8
GLbyte    :: i8    /* 1-byte signed */
GLshort   :: i16   /* 2-byte signed */
GLint     :: i32   /* 4-byte signed */
GLenum    :: GLint /* Same as GLint */
GLubyte   :: u8    /* 1-byte unsigned */
GLushort  :: u16   /* 2-byte unsigned */
GLuint    :: u32   /* 4-byte unsigned */
GLfloat   :: f32   /* single precision float */
GLdouble  :: f64   /* double precision float */
GLsizei   :: GLint /* Same as GLint */

@(default_calling_convention="c", link_prefix="tgl")
foreign lib {
	/* functions */
	Enable            :: proc(code: GLint) ---
	Disable           :: proc(code: GLint) ---
	ShadeModel        :: proc(mode: GLint) ---
	CullFace          :: proc(mode: GLint) ---
	PolygonMode       :: proc(face: GLint, mode: GLint) ---
	Begin             :: proc(type: GLint) ---
	End               :: proc() ---
	Rectf             :: proc(x1: GLfloat, y1: GLfloat, x2: GLfloat, y2: GLfloat) ---
	DrawBuffer        :: proc(mode: GLenum) ---
	ReadBuffer        :: proc(mode: GLenum) ---
	ReadPixels        :: proc(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, data: rawptr) ---
	DrawArrays        :: proc(mode: GLenum, first: GLint, count: GLsizei) ---
	SetEnableSpecular :: proc(s: GLint) ---
	GetTexturePixmap  :: proc(text: GLint, level: GLint, xsize: ^GLint, ysize: ^GLint) -> rawptr ---
	DrawText          :: proc(text: ^GLubyte, x: GLint, y: GLint, pixel: GLuint) ---
	TextSize          :: proc(mode: GLTEXTSIZE) ---
	PlotPixel         :: proc(x: GLint, y: GLint, pixel: GLuint) ---
	Vertex2f          :: proc(GLfloat, GLfloat) ---
	Vertex2d          :: proc(GLdouble, GLdouble) ---
	Vertex2fv         :: proc(^GLfloat) ---
	Vertex2dv         :: proc(^GLdouble) ---
	Vertex3f          :: proc(GLfloat, GLfloat, GLfloat) ---
	Vertex3d          :: proc(GLdouble, GLdouble, GLdouble) ---
	Vertex3fv         :: proc(^GLfloat) ---
	Vertex3dv         :: proc(^GLdouble) ---
	Vertex4f          :: proc(GLfloat, GLfloat, GLfloat, GLfloat) ---
	Vertex4d          :: proc(GLdouble, GLdouble, GLdouble, GLdouble) ---
	Vertex4fv         :: proc(^GLfloat) ---
	Vertex4dv         :: proc(^GLdouble) ---
	Color3f           :: proc(GLfloat, GLfloat, GLfloat) ---
	Color3d           :: proc(GLdouble, GLdouble, GLdouble) ---
	Color3fv          :: proc(^GLfloat) ---
	Color3dv          :: proc(^GLdouble) ---
	Color4f           :: proc(GLfloat, GLfloat, GLfloat, GLfloat) ---
	Color4d           :: proc(GLdouble, GLdouble, GLdouble, GLdouble) ---
	Color4fv          :: proc(^GLfloat) ---
	Color4dv          :: proc(^GLdouble) ---
	Normal3f          :: proc(GLfloat, GLfloat, GLfloat) ---
	Normal3d          :: proc(GLdouble, GLdouble, GLdouble) ---
	Normal3fv         :: proc(^GLfloat) ---
	Normal3dv         :: proc(^GLdouble) ---
	TexCoord1f        :: proc(GLfloat) ---
	TexCoord1d        :: proc(GLdouble) ---
	TexCoord1fv       :: proc(^GLfloat) ---
	TexCoord1dv       :: proc(^GLdouble) ---
	TexCoord2f        :: proc(GLfloat, GLfloat) ---
	TexCoord2d        :: proc(GLdouble, GLdouble) ---
	TexCoord2fv       :: proc(^GLfloat) ---
	TexCoord2dv       :: proc(^GLdouble) ---
	TexCoord3f        :: proc(GLfloat, GLfloat, GLfloat) ---
	TexCoord3d        :: proc(GLdouble, GLdouble, GLdouble) ---
	TexCoord3fv       :: proc(^GLfloat) ---
	TexCoord3dv       :: proc(^GLdouble) ---
	TexCoord4f        :: proc(GLfloat, GLfloat, GLfloat, GLfloat) ---
	TexCoord4d        :: proc(GLdouble, GLdouble, GLdouble, GLdouble) ---
	TexCoord4fv       :: proc(^GLfloat) ---
	TexCoord4dv       :: proc(^GLdouble) ---
	EdgeFlag          :: proc(flag: GLint) ---

	/* matrix */
	MatrixMode   :: proc(mode: GLint) ---
	LoadMatrixf  :: proc(m: ^GLfloat) ---
	LoadIdentity :: proc() ---
	MultMatrixf  :: proc(m: ^GLfloat) ---
	PushMatrix   :: proc() ---
	PopMatrix    :: proc() ---
	Rotatef      :: proc(angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) ---
	Translatef   :: proc(x: GLfloat, y: GLfloat, z: GLfloat) ---
	Scalef       :: proc(x: GLfloat, y: GLfloat, z: GLfloat) ---
	Viewport     :: proc(x: GLint, y: GLint, width: GLint, height: GLint) ---
	Frustum      :: proc(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, near: GLdouble, far: GLdouble) ---

	/* lists */
	GenLists    :: proc(range: GLint) -> GLuint ---
	IsList      :: proc(list: GLuint) -> GLint ---
	NewList     :: proc(list: GLuint, mode: GLint) ---
	EndList     :: proc() ---
	CallList    :: proc(list: GLuint) ---
	CallLists   :: proc(n: GLsizei, type: GLenum, lists: ^GLuint) ---
	ListBase    :: proc(n: GLint) ---
	DeleteList  :: proc(list: GLuint) ---
	DeleteLists :: proc(list: GLuint, range: GLuint) ---

	/* clear */
	Clear      :: proc(mask: GLint) ---
	ClearColor :: proc(r: GLfloat, g: GLfloat, b: GLfloat, a: GLfloat) ---
	ClearDepth :: proc(depth: GLdouble) ---

	/* Feedback */
	FeedbackBuffer :: proc(size: GLint, type: GLenum, buf: ^GLfloat) ---
	PassThrough    :: proc(token: GLfloat) ---

	/* selection */
	RenderMode   :: proc(mode: GLint) -> GLint ---
	SelectBuffer :: proc(size: GLint, buf: ^GLuint) ---
	InitNames    :: proc() ---
	PushName     :: proc(name: GLuint) ---
	PopName      :: proc() ---
	LoadName     :: proc(name: GLuint) ---

	/* textures */
	GenTextures         :: proc(n: GLint, textures: ^GLuint) ---
	DeleteTextures      :: proc(n: GLint, textures: ^GLuint) ---
	BindTexture         :: proc(target: GLint, texture: GLint) ---
	TexImage2D          :: proc(target: GLint, level: GLint, components: GLint, width: GLint, height: GLint, border: GLint, format: GLint, type: GLint, pixels: rawptr) ---
	TexImage1D          :: proc(target: GLint, level: GLint, components: GLint, width: GLint, border: GLint, format: GLint, type: GLint, pixels: rawptr) ---
	CopyTexImage2D      :: proc(target: GLenum, level: GLint, internalformat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) ---
	TexEnvi             :: proc(target: GLint, pname: GLint, param: GLint) ---
	TexParameteri       :: proc(target: GLint, pname: GLint, param: GLint) ---
	AreTexturesResident :: proc(n: GLsizei, textures: ^GLuint, residences: ^GLboolean) -> GLboolean ---
	IsTexture           :: proc(texture: GLuint) -> GLboolean ---

	/* lighting */
	Materialfv    :: proc(mode: GLint, type: GLint, v: ^GLfloat) ---
	Materialf     :: proc(mode: GLint, type: GLint, v: GLfloat) ---
	ColorMaterial :: proc(mode: GLint, type: GLint) ---
	Lightfv       :: proc(light: GLint, type: GLint, v: ^GLfloat) ---
	Lightf        :: proc(light: GLint, type: GLint, v: GLfloat) ---
	LightModeli   :: proc(pname: GLint, param: GLint) ---
	LightModelfv  :: proc(pname: GLint, param: ^GLfloat) ---

	/* misc */
	Flush       :: proc() ---
	Finish      :: proc() ---
	Hint        :: proc(target: GLint, mode: GLint) ---
	GetIntegerv :: proc(pname: GLint, params: ^GLint) ---
	GetFloatv   :: proc(pname: GLint, v: ^GLfloat) ---
	GetString   :: proc(name: GLenum) -> ^GLubyte ---
	GetError    :: proc() -> GLenum ---
	FrontFace   :: proc(mode: GLint) ---

	/* OpenGL 1.2 arrays */
	EnableClientState  :: proc(array: GLenum) ---
	DisableClientState :: proc(array: GLenum) ---
	ArrayElement       :: proc(i: GLint) ---
	VertexPointer      :: proc(size: GLint, type: GLenum, stride: GLsizei, pointer: ^GLvoid) ---
	ColorPointer       :: proc(size: GLint, type: GLenum, stride: GLsizei, pointer: ^GLvoid) ---
	NormalPointer      :: proc(type: GLenum, stride: GLsizei, pointer: ^GLvoid) ---
	TexCoordPointer    :: proc(size: GLint, type: GLenum, stride: GLsizei, pointer: ^GLvoid) ---

	/* OpenGL 2.0 buffers */
	GenBuffers        :: proc(n: GLsizei, buffers: ^GLuint) ---
	DeleteBuffers     :: proc(n: GLsizei, buffers: ^GLuint) ---
	BindBuffer        :: proc(target: GLenum, buffer: GLuint) ---
	IsBuffer          :: proc(buffer: GLuint) -> GLboolean ---
	MapBuffer         :: proc(target: GLenum, access: GLenum) -> rawptr ---
	BufferData        :: proc(target: GLenum, size: GLsizei, data: rawptr, usage: GLenum) ---
	BindBufferAsArray :: proc(target: GLenum, buffer: GLuint, type: GLenum, size: GLint, stride: GLint) ---

	/* OpenGL 1.2 polygon offset */
	PolygonOffset :: proc(factor: GLfloat, units: GLfloat) ---
	BlendFunc     :: proc(GLint, GLint) ---
	BlendEquation :: proc(mode: GLenum) ---
	DepthMask     :: proc(GLint) ---

	/* Point Size */
	PointSize :: proc(GLfloat) ---

	/* Raster rendering */
	RasterPos2f  :: proc(GLfloat, GLfloat) ---
	RasterPos3f  :: proc(GLfloat, GLfloat, GLfloat) ---
	RasterPos4f  :: proc(GLfloat, GLfloat, GLfloat, GLfloat) ---
	RasterPos2fv :: proc(v: ^GLfloat) ---
	RasterPos3fv :: proc(v: ^GLfloat) ---
	RasterPos4fv :: proc(v: ^GLfloat) ---
	DrawPixels   :: proc(width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, data: rawptr) ---
	PixelZoom    :: proc(x: GLfloat, y: GLfloat) ---

	/* PostProcessing pass implementation */
	PostProcess    :: proc(postprocess: proc "c" (x: GLint, y: GLint, pixel: GLuint, z: GLushort) -> GLuint) ---
	PolygonStipple :: proc(a: rawptr) ---

	/* non compatible functions */
	Debug :: proc(mode: GLint) ---
	Init  :: proc(zbuffer: ^ZBuffer) ---
	Close :: proc() ---
}

