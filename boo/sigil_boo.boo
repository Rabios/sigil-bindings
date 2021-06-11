// Written by Rabia Alhaffar in June 7, 2021
// SIGIL bindings for Boo!
// http://www.libsigil.com
// Updated: June 7, 2021
namespace sigil_boo
import System
import System.Runtime.InteropServices

public enum SIGIL:
	// text alignment symbolic constants
	SL_ALIGN_CENTER             = 0
	SL_ALIGN_RIGHT              = 1
	SL_ALIGN_LEFT               = 2

	// input key symbolic constants
	SL_KEY_ESCAPE               = 256
	SL_KEY_ENTER                = 257
	SL_KEY_TAB                  = 258
	SL_KEY_BACKSPACE            = 259
	SL_KEY_INSERT               = 260
	SL_KEY_DELETE               = 261
	SL_KEY_RIGHT                = 262
	SL_KEY_LEFT                 = 263
	SL_KEY_DOWN                 = 264
	SL_KEY_UP                   = 265
	SL_KEY_PAGE_UP              = 266
	SL_KEY_PAGE_DOWN            = 267
	SL_KEY_HOME                 = 268
	SL_KEY_END                  = 269
	SL_KEY_CAPS_LOCK            = 280
	SL_KEY_SCROLL_LOCK          = 281
	SL_KEY_NUM_LOCK             = 282
	SL_KEY_PRINT_SCREEN         = 283
	SL_KEY_PAUSE                = 284
	SL_KEY_F1                   = 290
	SL_KEY_F2                   = 291
	SL_KEY_F3                   = 292
	SL_KEY_F4                   = 293
	SL_KEY_F5                   = 294
	SL_KEY_F6                   = 295
	SL_KEY_F7                   = 296
	SL_KEY_F8                   = 297
	SL_KEY_F9                   = 298
	SL_KEY_F10                  = 299
	SL_KEY_F11                  = 300
	SL_KEY_F12                  = 301
	SL_KEY_F13                  = 302
	SL_KEY_F14                  = 303
	SL_KEY_F15                  = 304
	SL_KEY_F16                  = 305
	SL_KEY_F17                  = 306
	SL_KEY_F18                  = 307
	SL_KEY_F19                  = 308
	SL_KEY_F20                  = 309
	SL_KEY_F21                  = 310
	SL_KEY_F22                  = 311
	SL_KEY_F23                  = 312
	SL_KEY_F24                  = 313
	SL_KEY_F25                  = 314
	SL_KEY_KEYPAD_0             = 320
	SL_KEY_KEYPAD_1             = 321
	SL_KEY_KEYPAD_2             = 322
	SL_KEY_KEYPAD_3             = 323
	SL_KEY_KEYPAD_4             = 324
	SL_KEY_KEYPAD_5             = 325
	SL_KEY_KEYPAD_6             = 326
	SL_KEY_KEYPAD_7             = 327
	SL_KEY_KEYPAD_8             = 328
	SL_KEY_KEYPAD_9             = 329
	SL_KEY_KEYPAD_DECIMAL       = 330
	SL_KEY_KEYPAD_DIVIDE        = 331
	SL_KEY_KEYPAD_MULTIPLY      = 332
	SL_KEY_KEYPAD_SUBTRACT      = 333
	SL_KEY_KEYPAD_ADD           = 334
	SL_KEY_KEYPAD_ENTER         = 335
	SL_KEY_KEYPAD_EQUAL         = 336
	SL_KEY_LEFT_SHIFT           = 340
	SL_KEY_LEFT_CONTROL         = 341
	SL_KEY_LEFT_ALT             = 342
	SL_KEY_LEFT_SUPER           = 343
	SL_KEY_RIGHT_SHIFT          = 344
	SL_KEY_RIGHT_CONTROL        = 345
	SL_KEY_RIGHT_ALT            = 346
	SL_KEY_RIGHT_SUPER          = 347

	// mouse input symbolic constants
	SL_MOUSE_BUTTON_1           = 0
	SL_MOUSE_BUTTON_2           = 1
	SL_MOUSE_BUTTON_3           = 2
	SL_MOUSE_BUTTON_4           = 3
	SL_MOUSE_BUTTON_5           = 4
	SL_MOUSE_BUTTON_6           = 5
	SL_MOUSE_BUTTON_7           = 6
	SL_MOUSE_BUTTON_8           = 7
	SL_MOUSE_BUTTON_LEFT        = SL_MOUSE_BUTTON_1
	SL_MOUSE_BUTTON_RIGHT       = SL_MOUSE_BUTTON_2
	SL_MOUSE_BUTTON_MIDDLE      = SL_MOUSE_BUTTON_3

// initialization commands
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slWindow(width as int, height as int, title as string, fullscreen as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slShowCursor(showCursor as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slClose():
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slShouldClose() as int:
	pass

// simple input
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetKey(key as int) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetMouseButton(button as int) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetMouseX() as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetMouseY() as int:
	pass

// simple frame timing
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetDeltaTime() as double:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetTime() as double:
	pass

// rendering commands
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slRender():
	pass

// color control
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetBackColor(red as double, green as double, blue as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetForeColor(red as double, green as double, blue as double, alpha as double):
	pass

// blending control
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetAdditiveBlend(additiveBlend as int):
	pass

// transformations
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slPush():
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slPop():
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slTranslate(x as double, y as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slRotate(degrees as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slScale(x as double, y as double):
	pass

// texture loading
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slLoadTexture(filename as string) as int:
	pass

// sound loading and playing
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slLoadWAV(filename as string) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundPlay(sound as int) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundLoop(sound as int) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundPause(sound as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundStop(sound as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundPauseAll():
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundResumeAll():
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundStopAll():
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundPlaying(sound as int) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSoundLooping(sound as int) as int:
	pass

// simple shape commands
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slTriangleFill(x as double, y as double, width as double, height as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slTriangleOutline(x as double, y as double, width as double, height as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slRectangleFill(x as double, y as double, width as double, height as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slRectangleOutline(x as double, y as double, width as double, height as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slCircleFill(x as double, y as double, radius as double, numVertices as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slCircleOutline(x as double, y as double, radius as double, numVertices as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSemiCircleFill(x as double, y as double, radius as double, numVertices as double, degrees as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSemiCircleOutline(x as double, y as double, radius as double, numVertices as double, degrees as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slPoint(x as double, y as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slLine(x1 as double, y1 as double, x2 as double, y2 as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetSpriteTiling(x as double, y as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetSpriteScroll(x as double, y as double):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSprite(texture as int, x as double, y as double, width as double, height as double):
	pass

// text commands
[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetTextAlign(fontAlign as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetTextWidth(text as string) as double:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slGetTextHeight(text as string) as double:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slLoadFont(fontFileName as string) as int:
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetFont(font as int, fontSize as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slSetFontSize(fontSize as int):
	pass

[DllImport("sigil", CallingConvention: CallingConvention.Cdecl)]
def slText(x as double, y as double, text as string):
	pass
