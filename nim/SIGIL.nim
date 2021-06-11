# Written by Rabia Alhaffar in June 10, 2021
# SIGIL bindings for Nim!
# http://www.libsigil.com
# Updated: June 10, 2021
import dynlib

# Functions pointers, For casting...
type
  # initialization commands
  sl_window_func = proc(width: int, height: int, title: cstring, fullscreen: int) {.gcsafe, noconv.}
  sl_show_cursor_func = proc(showCursor: int) {.gcsafe, noconv.}
  sl_close_func = proc() {.gcsafe, noconv.}
  sl_should_close_func = proc(): int {.gcsafe, noconv.}
  
  # simple input
  sl_get_key_func = proc(key: int): int {.gcsafe, noconv.}
  sl_get_mouse_button_func = proc(button: int): int {.gcsafe, noconv.}
  sl_get_mouse_x_func = proc(): int {.gcsafe, noconv.}
  sl_get_mouse_y_func = proc(): int {.gcsafe, noconv.}
  
  # simple frame timing
  sl_get_delta_time_func = proc(): cdouble {.gcsafe, noconv.}
  sl_get_time_func = proc(): cdouble {.gcsafe, noconv.}
  
  # rendering commands
  sl_render_func = proc() {.gcsafe, noconv.}
  
  # color control
  sl_set_back_color_func = proc(red: cdouble, green: cdouble, blue: cdouble) {.gcsafe, noconv.}
  sl_set_fore_color_func = proc(red: cdouble, green: cdouble, blue: cdouble, alpha: cdouble) {.gcsafe, noconv.}
  
  # blending control
  sl_set_additive_blend_func = proc(additiveBlend: int) {.gcsafe, noconv.}
  
  # transformations
  sl_push_func = proc() {.gcsafe, noconv.}
  sl_pop_func = proc() {.gcsafe, noconv.}
  sl_translate_func = proc(x: cdouble, y: cdouble) {.gcsafe, noconv.}
  sl_rotate_func = proc(degrees: cdouble) {.gcsafe, noconv.}
  sl_scale_func = proc(x: cdouble, y: cdouble) {.gcsafe, noconv.}
  
  # texture loading
  sl_load_texture_func = proc(filename: cstring): int {.gcsafe, noconv.}
  
  # sound loading and playing
  sl_load_wav_func = proc(filename: cstring): int {.gcsafe, noconv.}
  sl_sound_play_func = proc(sound: int): int {.gcsafe, noconv.}
  sl_sound_loop_func = proc(sound: int): int {.gcsafe, noconv.}
  sl_sound_pause_func = proc(sound: int) {.gcsafe, noconv.}
  sl_sound_stop_func = proc(sound: int) {.gcsafe, noconv.}
  sl_sound_pause_all_func = proc() {.gcsafe, noconv.}
  sl_sound_resume_all_func = proc() {.gcsafe, noconv.}
  sl_sound_stop_all_func = proc() {.gcsafe, noconv.}
  sl_sound_playing_func = proc(sound: int): int {.gcsafe, noconv.}
  sl_sound_looping_func = proc(sound: int): int {.gcsafe, noconv.}
  
  # simple shape commands
  sl_triangle_fill_func = proc(x: cdouble, y: cdouble, width: cdouble, height: cdouble) {.gcsafe, noconv.}
  sl_triangle_outline_func = proc(x: cdouble, y: cdouble, width: cdouble, height: cdouble) {.gcsafe, noconv.}
  sl_rectangle_fill_func = proc(x: cdouble, y: cdouble, width: cdouble, height: cdouble) {.gcsafe, noconv.}
  sl_rectangle_outline_func = proc(x: cdouble, y: cdouble, width: cdouble, height: cdouble) {.gcsafe, noconv.}
  sl_circle_fill_func = proc(x: cdouble, y: cdouble, radius: cdouble, numVertices: int) {.gcsafe, noconv.}
  sl_circle_outline_func = proc(x: cdouble, y: cdouble, radius: cdouble, numVertices: int) {.gcsafe, noconv.}
  sl_semicircle_fill_func = proc(x: cdouble, y: cdouble, radius: cdouble, numVertices: int, degrees: cdouble) {.gcsafe, noconv.}
  sl_semicircle_outline_func = proc(x: cdouble, y: cdouble, radius: cdouble, numVertices: int, degrees: cdouble) {.gcsafe, noconv.}
  sl_point_func = proc(x: cdouble, y: cdouble) {.gcsafe, noconv.}
  sl_line_func = proc(x1: cdouble, y1: cdouble, x2: cdouble, y2: cdouble) {.gcsafe, noconv.}
  sl_set_sprite_tiling_func = proc(x: cdouble, y: cdouble) {.gcsafe, noconv.}
  sl_set_sprite_scroll_func = proc(x: cdouble, y: cdouble) {.gcsafe, noconv.}
  sl_sprite_func = proc(texture: int, x: cdouble, y: cdouble, width: cdouble, height: cdouble) {.gcsafe, noconv.}
  
  # text commands
  sl_set_text_align_func = proc(fontAlign: int) {.gcsafe, noconv.}
  sl_get_text_width_func = proc(text: cstring): cdouble {.gcsafe, noconv.}
  sl_get_text_height_func = proc(text: cstring): cdouble {.gcsafe, noconv.}
  sl_load_font_func = proc(fontFileName: cstring): int {.gcsafe, noconv.}
  sl_set_font_func = proc(font: int, fontSize: int) {.gcsafe, noconv.}
  sl_set_font_size_func = proc(fontSize: int) {.gcsafe, noconv.}
  sl_text_func = proc(x: cdouble, y: cdouble, text: cstring) {.gcsafe, noconv.}
  
# text alignment symbolic constants
let SL_ALIGN_CENTER*            = 0
let SL_ALIGN_RIGHT*             = 1
let SL_ALIGN_LEFT*              = 2
  
# input key symbolic constants
let SL_KEY_ESCAPE*              = 256
let SL_KEY_ENTER*               = 257
let SL_KEY_TAB*                 = 258
let SL_KEY_BACKSPACE*           = 259
let SL_KEY_INSERT*              = 260
let SL_KEY_DELETE*              = 261
let SL_KEY_RIGHT*               = 262
let SL_KEY_LEFT*                = 263
let SL_KEY_DOWN*                = 264
let SL_KEY_UP*                  = 265
let SL_KEY_PAGE_UP*             = 266
let SL_KEY_PAGE_DOWN*           = 267
let SL_KEY_HOME*                = 268
let SL_KEY_END*                 = 269
let SL_KEY_CAPS_LOCK*           = 280
let SL_KEY_SCROLL_LOCK*         = 281
let SL_KEY_NUM_LOCK*            = 282
let SL_KEY_PRINT_SCREEN*        = 283
let SL_KEY_PAUSE*               = 284
let SL_KEY_F1*                  = 290
let SL_KEY_F2*                  = 291
let SL_KEY_F3*                  = 292
let SL_KEY_F4*                  = 293
let SL_KEY_F5*                  = 294
let SL_KEY_F6*                  = 295
let SL_KEY_F7*                  = 296
let SL_KEY_F8*                  = 297
let SL_KEY_F9*                  = 298
let SL_KEY_F10*                 = 299
let SL_KEY_F11*                 = 300
let SL_KEY_F12*                 = 301
let SL_KEY_F13*                 = 302
let SL_KEY_F14*                 = 303
let SL_KEY_F15*                 = 304
let SL_KEY_F16*                 = 305
let SL_KEY_F17*                 = 306
let SL_KEY_F18*                 = 307
let SL_KEY_F19*                 = 308
let SL_KEY_F20*                 = 309
let SL_KEY_F21*                 = 310
let SL_KEY_F22*                 = 311
let SL_KEY_F23*                 = 312
let SL_KEY_F24*                 = 313
let SL_KEY_F25*                 = 314
let SL_KEY_KEYPAD_0*            = 320
let SL_KEY_KEYPAD_1*            = 321
let SL_KEY_KEYPAD_2*            = 322
let SL_KEY_KEYPAD_3*            = 323
let SL_KEY_KEYPAD_4*            = 324
let SL_KEY_KEYPAD_5*            = 325
let SL_KEY_KEYPAD_6*            = 326
let SL_KEY_KEYPAD_7*            = 327
let SL_KEY_KEYPAD_8*            = 328
let SL_KEY_KEYPAD_9*            = 329
let SL_KEY_KEYPAD_DECIMAL*      = 330
let SL_KEY_KEYPAD_DIVIDE*       = 331
let SL_KEY_KEYPAD_MULTIPLY*     = 332
let SL_KEY_KEYPAD_SUBTRACT*     = 333
let SL_KEY_KEYPAD_ADD*          = 334
let SL_KEY_KEYPAD_ENTER*        = 335
let SL_KEY_KEYPAD_EQUAL*        = 336
let SL_KEY_LEFT_SHIFT*          = 340
let SL_KEY_LEFT_CONTROL*        = 341
let SL_KEY_LEFT_ALT*            = 342
let SL_KEY_LEFT_SUPER*          = 343
let SL_KEY_RIGHT_SHIFT*         = 344
let SL_KEY_RIGHT_CONTROL*       = 345
let SL_KEY_RIGHT_ALT*           = 346
let SL_KEY_RIGHT_SUPER*         = 347

# mouse input symbolic constants
let SL_MOUSE_BUTTON_1*          = 0
let SL_MOUSE_BUTTON_2*          = 1
let SL_MOUSE_BUTTON_3*          = 2
let SL_MOUSE_BUTTON_4*          = 3
let SL_MOUSE_BUTTON_5*          = 4
let SL_MOUSE_BUTTON_6*          = 5
let SL_MOUSE_BUTTON_7*          = 6
let SL_MOUSE_BUTTON_8*          = 7
let SL_MOUSE_BUTTON_LEFT*       = SL_MOUSE_BUTTON_1
let SL_MOUSE_BUTTON_RIGHT*      = SL_MOUSE_BUTTON_2
let SL_MOUSE_BUTTON_MIDDLE*     = SL_MOUSE_BUTTON_3

let lib = case hostOS
of "windows":
  loadLib("sigil.dll")
of "macosx":
  loadLib("libsigil.dylib")
else:
  loadLib("libsigil.so")

# initialization commands
let slWindow*               = cast[sl_window_func](lib.symAddr("slWindow"))
let slShowCursor*           = cast[sl_show_cursor_func](lib.symAddr("slShowCursor"))
let slClose*                = cast[sl_close_func](lib.symAddr("slClose"))
let slShouldClose*          = cast[sl_should_close_func](lib.symAddr("slShouldClose"))

# simple input
let slGetKey*               = cast[sl_get_key_func](lib.symAddr("slGetKey"))
let slGetMouseButton*       = cast[sl_get_mouse_button_func](lib.symAddr("slGetMouseButton"))
let slGetMouseX*            = cast[sl_get_mouse_x_func](lib.symAddr("slGetMouseX"))
let slGetMouseY*            = cast[sl_get_mouse_y_func](lib.symAddr("slGetMouseY"))

# simple frame timing
let slGetDeltaTime*         = cast[sl_get_delta_time_func](lib.symAddr("slGetDeltaTime"))
let slGetTime*              = cast[sl_get_time_func](lib.symAddr("slGetTime"))

# rendering commands
let slRender*               = cast[sl_render_func](lib.symAddr("slRender"))

# color control
let slSetBackColor*         = cast[sl_set_back_color_func](lib.symAddr("slSetBackColor"))
let slSetForeColor*         = cast[sl_set_fore_color_func](lib.symAddr("slSetForeColor"))

# blending control
let slSetAdditiveBlend*     = cast[sl_set_additive_blend_func](lib.symAddr("slSetAdditiveBlend"))

# transformations
let slPush*                 = cast[sl_push_func](lib.symAddr("slPush"))
let slPop*                  = cast[sl_pop_func](lib.symAddr("slPop"))
let slTranslate*            = cast[sl_translate_func](lib.symAddr("slTranslate"))
let slRotate*               = cast[sl_rotate_func](lib.symAddr("slRotate"))
let slScale*                = cast[sl_scale_func](lib.symAddr("slScale"))

# texture loading
let slLoadTexture*          = cast[sl_load_texture_func](lib.symAddr("slLoadTexture"))

# sound loading and playing
let slLoadWAV*              = cast[sl_load_wav_func](lib.symAddr("slLoadWAV"))
let slSoundPlay*            = cast[sl_sound_play_func](lib.symAddr("slSoundPlay"))
let slSoundLoop*            = cast[sl_sound_loop_func](lib.symAddr("slSoundLoop"))
let slSoundPause*           = cast[sl_sound_pause_func](lib.symAddr("slSoundPause"))
let slSoundStop*            = cast[sl_sound_stop_func](lib.symAddr("slSoundStop"))
let slSoundPauseAll*        = cast[sl_sound_pause_all_func](lib.symAddr("slSoundPauseAll"))
let slSoundResumeAll*       = cast[sl_sound_resume_all_func](lib.symAddr("slSoundResumeAll"))
let slSoundStopAll*         = cast[sl_sound_stop_all_func](lib.symAddr("slSoundStopAll"))
let slSoundPlaying*         = cast[sl_sound_playing_func](lib.symAddr("slSoundPlaying"))
let slSoundLooping*         = cast[sl_sound_looping_func](lib.symAddr("slSoundLooping"))

# simple shape commands
let slTriangleFill*         = cast[sl_triangle_fill_func](lib.symAddr("slTriangleFill"))
let slTriangleOutline*      = cast[sl_triangle_outline_func](lib.symAddr("slTriangleOutline"))
let slRectangleFill*        = cast[sl_rectangle_fill_func](lib.symAddr("slRectangleFill"))
let slRectangleOutline*     = cast[sl_rectangle_outline_func](lib.symAddr("slRectangleOutline"))
let slCircleFill*           = cast[sl_circle_fill_func](lib.symAddr("slCircleFill"))
let slCircleOutline*        = cast[sl_circle_outline_func](lib.symAddr("slCircleOutline"))
let slSemiCircleFill*       = cast[sl_semicircle_fill_func](lib.symAddr("slSemiCircleFill"))
let slSemiCircleOutline*    = cast[sl_semicircle_outline_func](lib.symAddr("slSemiCircleOutline"))
let slPoint*                = cast[sl_point_func](lib.symAddr("slPoint"))
let slLine*                 = cast[sl_line_func](lib.symAddr("slLine"))
let slSetSpriteTiling*      = cast[sl_set_sprite_tiling_func](lib.symAddr("slSetSpriteTiling"))
let slSetSpriteScroll*      = cast[sl_set_sprite_scroll_func](lib.symAddr("slSetSpriteScroll"))
let slSprite*               = cast[sl_sprite_func](lib.symAddr("slSprite"))

# text commands
let slSetTextAlign*         = cast[sl_set_text_align_func](lib.symAddr("slSetTextAlign"))
let slGetTextWidth*         = cast[sl_get_text_width_func](lib.symAddr("slGetTextWidth"))
let slGetTextHeight*        = cast[sl_get_text_height_func](lib.symAddr("slGetTextHeight"))
let slLoadFont*             = cast[sl_load_font_func](lib.symAddr("slLoadFont"))
let slSetFont*              = cast[sl_set_font_func](lib.symAddr("slSetFont"))
let slSetFontSize*          = cast[sl_set_font_size_func](lib.symAddr("slSetFontSize"))
let slText*                 = cast[sl_text_func](lib.symAddr("slText"))
