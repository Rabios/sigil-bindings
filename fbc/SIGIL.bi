' Written by Rabia Alhaffar in June 8, 2021
' FreeBASIC bindings for SIGIL!
' http://www.libsigil.com
' Last Updated: June 8, 2021

#pragma once

#include once "crt/long.bi"
#inclib "libsigil"

extern "C"

type SIGIL as long
enum
    ' text alignment symbolic constants
    SL_ALIGN_CENTER                             = 0
    SL_ALIGN_RIGHT                              = 1
    SL_ALIGN_LEFT                               = 2

    ' input key symbolic constants
    SL_KEY_ESCAPE                               = 256
    SL_KEY_ENTER                                = 257
    SL_KEY_TAB                                  = 258
    SL_KEY_BACKSPACE                            = 259
    SL_KEY_INSERT                               = 260
    SL_KEY_DELETE                               = 261
    SL_KEY_RIGHT                                = 262
    SL_KEY_LEFT                                 = 263
    SL_KEY_DOWN                                 = 264
    SL_KEY_UP                                   = 265
    SL_KEY_PAGE_UP                              = 266
    SL_KEY_PAGE_DOWN                            = 267
    SL_KEY_HOME                                 = 268
    SL_KEY_END                                  = 269
    SL_KEY_CAPS_LOCK                            = 280
    SL_KEY_SCROLL_LOCK                          = 281
    SL_KEY_NUM_LOCK                             = 282
    SL_KEY_PRINT_SCREEN                         = 283
    SL_KEY_PAUSE                                = 284
    SL_KEY_F1                                   = 290
    SL_KEY_F2                                   = 291
    SL_KEY_F3                                   = 292
    SL_KEY_F4                                   = 293
    SL_KEY_F5                                   = 294
    SL_KEY_F6                                   = 295
    SL_KEY_F7                                   = 296
    SL_KEY_F8                                   = 297
    SL_KEY_F9                                   = 298
    SL_KEY_F10                                  = 299
    SL_KEY_F11                                  = 300
    SL_KEY_F12                                  = 301
    SL_KEY_F13                                  = 302
    SL_KEY_F14                                  = 303
    SL_KEY_F15                                  = 304
    SL_KEY_F16                                  = 305
    SL_KEY_F17                                  = 306
    SL_KEY_F18                                  = 307
    SL_KEY_F19                                  = 308
    SL_KEY_F20                                  = 309
    SL_KEY_F21                                  = 310
    SL_KEY_F22                                  = 311
    SL_KEY_F23                                  = 312
    SL_KEY_F24                                  = 313
    SL_KEY_F25                                  = 314
    SL_KEY_KEYPAD_0                             = 320
    SL_KEY_KEYPAD_1                             = 321
    SL_KEY_KEYPAD_2                             = 322
    SL_KEY_KEYPAD_3                             = 323
    SL_KEY_KEYPAD_4                             = 324
    SL_KEY_KEYPAD_5                             = 325
    SL_KEY_KEYPAD_6                             = 326
    SL_KEY_KEYPAD_7                             = 327
    SL_KEY_KEYPAD_8                             = 328
    SL_KEY_KEYPAD_9                             = 329
    SL_KEY_KEYPAD_DECIMAL                       = 330
    SL_KEY_KEYPAD_DIVIDE                        = 331
    SL_KEY_KEYPAD_MULTIPLY                      = 332
    SL_KEY_KEYPAD_SUBTRACT                      = 333
    SL_KEY_KEYPAD_ADD                           = 334
    SL_KEY_KEYPAD_ENTER                         = 335
    SL_KEY_KEYPAD_EQUAL                         = 336
    SL_KEY_LEFT_SHIFT                           = 340
    SL_KEY_LEFT_CONTROL                         = 341
    SL_KEY_LEFT_ALT                             = 342
    SL_KEY_LEFT_SUPER                           = 343
    SL_KEY_RIGHT_SHIFT                          = 344
    SL_KEY_RIGHT_CONTROL                        = 345
    SL_KEY_RIGHT_ALT                            = 346
    SL_KEY_RIGHT_SUPER                          = 347

    ' mouse input symbolic constants
    SL_MOUSE_BUTTON_1                           = 0
    SL_MOUSE_BUTTON_2                           = 1
    SL_MOUSE_BUTTON_3                           = 2
    SL_MOUSE_BUTTON_4                           = 3
    SL_MOUSE_BUTTON_5                           = 4
    SL_MOUSE_BUTTON_6                           = 5
    SL_MOUSE_BUTTON_7                           = 6
    SL_MOUSE_BUTTON_8                           = 7
    SL_MOUSE_BUTTON_LEFT                        = SL_MOUSE_BUTTON_1
    SL_MOUSE_BUTTON_RIGHT                       = SL_MOUSE_BUTTON_2
    SL_MOUSE_BUTTON_MIDDLE                      = SL_MOUSE_BUTTON_3    
end enum

' initialization commands
declare sub slWindow(byval width as long, byval height as long, byval title as const zstring ptr, byval fullscreen as long)
declare sub slShowCursor(byval showCursor as long)
declare sub slClose()
declare function slShouldClose() as long

' simple input
declare function slGetKey(byval key as long) as long
declare function slGetMouseButton(byval button as long) as long
declare function slGetMouseX() as long
declare function slGetMouseY() as long

' simple frame timing
declare function slGetDeltaTime() as double
declare function slGetTime() as double

' rendering commands
declare sub slRender()

' color control
declare sub slSetBackColor(byval red as double, byval green as double, byval blue as double)
declare sub slSetForeColor(byval red as double, byval green as double, byval blue as double, byval alpha as double)

' blending control
declare sub slSetAdditiveBlend(byval additiveBlend as long)

' transformations
declare sub slPush()
declare sub slPop()
declare sub slTranslate(byval x as double, byval y as double)
declare sub slRotate(byval degrees as double)
declare sub slScale(byval x as double, byval y as double)

' texture loading
declare function slLoadTexture(byval filename as const zstring ptr) as long

' sound loading and playing
declare function slLoadWAV(byval filename as const zstring ptr) as long
declare function slSoundPlay(byval sound as long) as long
declare function slSoundLoop(byval sound as long) as long
declare sub slSoundPause(byval sound as long)
declare sub slSoundStop(byval sound as long)
declare sub slSoundPauseAll()
declare sub slSoundResumeAll()
declare sub slSoundStopAll()
declare function slSoundPlaying(byval sound as long) as long
declare function slSoundLooping(byval sound as long) as long

' simple shape commands
declare sub slTriangleFill(byval x as double, byval y as double, byval width as double, byval height as double)
declare sub slTriangleOutline(byval x as double, byval y as double, byval width as double, byval height as double)
declare sub slRectangleFill(byval x as double, byval y as double, byval width as double, byval height as double)
declare sub slRectangleOutline(byval x as double, byval y as double, byval width as double, byval height as double)
declare sub slCircleFill(byval x as double, byval y as double, byval radius as double, byval numVertices as long)
declare sub slCircleOutline(byval x as double, byval y as double, byval radius as double, byval numVertices as long)
declare sub slSemiCircleFill(byval x as double, byval y as double, byval radius as double, byval numVertices as long, byval degrees as double)
declare sub slSemiCircleOutline(byval x as double, byval y as double, byval radius as double, byval numVertices as long, byval degrees as double)
declare sub slPoint(byval x as double, byval y as double)
declare sub slLine(byval x1 as double, byval y1 as double, byval x2 as double, byval y2 as double)
declare sub slSetSpriteTiling(byval x as double, byval y as double)
declare sub slSetSpriteScroll(byval x as double, byval y as double)
declare sub slSprite(byval sprite as long, byval x as double, byval y as double, byval width as double, byval height as double)

' text commands
declare sub slSetTextAlign(byval fontAlign as long)
declare function slGetTextWidth(byval text as const zstring ptr) as double
declare function slGetTextHeight(byval text as const zstring ptr) as double
declare function slLoadFont(byval fontFilename as const zstring ptr) as long
declare sub slSetFont(byval font as long, byval fontSize as long)
declare sub slSetFontSize(byval fontSize as long)
declare sub slText(byval x as long, byval y as long, byval text as const zstring ptr)

end extern
