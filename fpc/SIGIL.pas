// Written by Rabia Alhaffar in June 10, 2021
// SIGIL bindings for FreePascal!
// http://www.libsigil.com
// Updated: June 10, 2021
unit SIGIL;

interface
const
  {$ifdef windows}
  libname = 'sigil.dll';
  {$endif}
  {$ifdef Darwin}
  libname = 'libsigil.dylib';
  {$endif}
  {$ifdef Linux}
  libname = 'libsigil.so';
  {$endif}
  {$IFDEF Arm}
  libname = 'libsigil.so';
  {$endif}
  
  // text alignment symbolic constants
  SL_ALIGN_CENTER           = 0;
  SL_ALIGN_RIGHT            = 1;
  SL_ALIGN_LEFT             = 2;
  
  // input key symbolic constants
  SL_KEY_ESCAPE             = 256;
  SL_KEY_ENTER              = 257;
  SL_KEY_TAB                = 258;
  SL_KEY_BACKSPACE          = 259;
  SL_KEY_INSERT             = 260;
  SL_KEY_DELETE             = 261;
  SL_KEY_RIGHT              = 262;
  SL_KEY_LEFT               = 263;
  SL_KEY_DOWN               = 264;
  SL_KEY_UP                 = 265;
  SL_KEY_PAGE_UP            = 266;
  SL_KEY_PAGE_DOWN          = 267;
  SL_KEY_HOME               = 268;
  SL_KEY_END                = 269;
  SL_KEY_CAPS_LOCK          = 280;
  SL_KEY_SCROLL_LOCK        = 281;
  SL_KEY_NUM_LOCK           = 282;
  SL_KEY_PRINT_SCREEN       = 283;
  SL_KEY_PAUSE              = 284;
  SL_KEY_F1                 = 290;
  SL_KEY_F2                 = 291;
  SL_KEY_F3                 = 292;
  SL_KEY_F4                 = 293;
  SL_KEY_F5                 = 294;
  SL_KEY_F6                 = 295;
  SL_KEY_F7                 = 296;
  SL_KEY_F8                 = 297;
  SL_KEY_F9                 = 298;
  SL_KEY_F10                = 299;
  SL_KEY_F11                = 300;
  SL_KEY_F12                = 301;
  SL_KEY_F13                = 302;
  SL_KEY_F14                = 303;
  SL_KEY_F15                = 304;
  SL_KEY_F16                = 305;
  SL_KEY_F17                = 306;
  SL_KEY_F18                = 307;
  SL_KEY_F19                = 308;
  SL_KEY_F20                = 309;
  SL_KEY_F21                = 310;
  SL_KEY_F22                = 311;
  SL_KEY_F23                = 312;
  SL_KEY_F24                = 313;
  SL_KEY_F25                = 314;
  SL_KEY_KEYPAD_0           = 320;
  SL_KEY_KEYPAD_1           = 321;
  SL_KEY_KEYPAD_2           = 322;
  SL_KEY_KEYPAD_3           = 323;
  SL_KEY_KEYPAD_4           = 324;
  SL_KEY_KEYPAD_5           = 325;
  SL_KEY_KEYPAD_6           = 326;
  SL_KEY_KEYPAD_7           = 327;
  SL_KEY_KEYPAD_8           = 328;
  SL_KEY_KEYPAD_9           = 329;
  SL_KEY_KEYPAD_DECIMAL     = 330;
  SL_KEY_KEYPAD_DIVIDE      = 331;
  SL_KEY_KEYPAD_MULTIPLY    = 332;
  SL_KEY_KEYPAD_SUBTRACT    = 333;
  SL_KEY_KEYPAD_ADD         = 334;
  SL_KEY_KEYPAD_ENTER       = 335;
  SL_KEY_KEYPAD_EQUAL       = 336;
  SL_KEY_LEFT_SHIFT         = 340;
  SL_KEY_LEFT_CONTROL       = 341;
  SL_KEY_LEFT_ALT           = 342;
  SL_KEY_LEFT_SUPER         = 343;
  SL_KEY_RIGHT_SHIFT        = 344;
  SL_KEY_RIGHT_CONTROL      = 345;
  SL_KEY_RIGHT_ALT          = 346;
  SL_KEY_RIGHT_SUPER        = 347;

  // mouse input symbolic constants
  SL_MOUSE_BUTTON_1         = 0;
  SL_MOUSE_BUTTON_2         = 1;
  SL_MOUSE_BUTTON_3         = 2;
  SL_MOUSE_BUTTON_4         = 3;
  SL_MOUSE_BUTTON_5         = 4;
  SL_MOUSE_BUTTON_6         = 5;
  SL_MOUSE_BUTTON_7         = 6;
  SL_MOUSE_BUTTON_8         = 7;
  SL_MOUSE_BUTTON_LEFT      = 0;    // SL_MOUSE_BUTTON_1
  SL_MOUSE_BUTTON_RIGHT     = 1;    // SL_MOUSE_BUTTON_2
  SL_MOUSE_BUTTON_MIDDLE    = 2;    // SL_MOUSE_BUTTON_3
  
// initialization commands
procedure slWindow(width: Integer; height: Integer; title: PAnsiChar; fullScreen: Integer); cdecl; external libname;
procedure slShowCursor(showCursor: Integer); cdecl; external libname;
procedure slClose; cdecl; external libname;
function slShouldClose: Integer; cdecl; external libname;

// simple input
function slGetKey(key: Integer): Integer; cdecl; external libname;
function slGetMouseButton(button: Integer): Integer; cdecl; external libname;
function slGetMouseX: Integer; cdecl; external libname;
function slGetMouseY: Integer; cdecl; external libname;

// simple frame timing
function slGetDeltaTime: Double; cdecl; external libname;
function slGetTime: Double; cdecl; external libname;

// rendering commands
procedure slRender; cdecl; external libname;

// color control
procedure slSetBackColor(red: Double; green: Double; blue: Double); cdecl; external libname;
procedure slSetForeColor(red: Double; green: Double; blue: Double; alpha: Double); cdecl; external libname;

// blending control
procedure slSetAdditiveBlend(additiveBlend: Integer); cdecl; external libname;

// transformations
procedure slPush; cdecl; external libname;
procedure slPop; cdecl; external libname;
procedure slTranslate(x: Double; y: Double); cdecl; external libname;
procedure slRotate(degrees: Double); cdecl; external libname;
procedure slScale(x: Double; y: Double); cdecl; external libname;

// texture loading
function slLoadTexture(filename: PAnsiChar): Integer; cdecl; external libname;

// sound loading and playing
function slLoadWAV(filename: PAnsiChar): Integer; cdecl; external libname;
function slSoundPlay(sound: Integer): Integer; cdecl; external libname;
function slSoundLoop(sound: Integer): Integer; cdecl; external libname;
procedure slSoundPause(sound: Integer); cdecl; external libname;
procedure slSoundStop(sound: Integer); cdecl; external libname;
procedure slSoundPauseAll; cdecl; external libname;
procedure slSoundResumeAll; cdecl; external libname;
procedure slSoundStopAll; cdecl; external libname;
function slSoundPlaying(sound: Integer): Integer; cdecl; external libname;
function slSoundLooping(sound: Integer): Integer; cdecl; external libname;

// simple shape commands
procedure slTriangleFill(x: Double; y: Double; width: Double; height: Double); cdecl; external libname;
procedure slTriangleOutline(x: Double; y: Double; width: Double; height: Double); cdecl; external libname;
procedure slRectangleFill(x: Double; y: Double; width: Double; height: Double); cdecl; external libname;
procedure slRectangleOutline(x: Double; y: Double; width: Double; height: Double); cdecl; external libname;
procedure slCircleFill(x: Double; y: Double; radius: Double; numVertices: Integer); cdecl; external libname;
procedure slCircleOutline(x: Double; y: Double; radius: Double; numVertices: Integer); cdecl; external libname;
procedure slSemiCircleFill(x: Double; y: Double; radius: Double; numVertices: Integer; degrees: Double); cdecl; external libname;
procedure slSemiCircleOutline(x: Double; y: Double; radius: Double; numVertices: Integer; degrees: Double); cdecl; external libname;
procedure slPoint(x: Double; y: Double); cdecl; external libname;
procedure slLine(x1: Double; y1: Double; x2: Double; y2: Double); cdecl; external libname;
procedure slSetSpriteTiling(x: Double; y: Double); cdecl; external libname;
procedure slSetSpriteScroll(x: Double; y: Double); cdecl; external libname;
procedure slSprite(texture: Integer; x: Double; y: Double; width: Double; height: Double); cdecl; external libname;

// text commands
procedure slSetTextAlign(fontAlign: Integer); cdecl; external libname;
function slGetTextWidth(text: PAnsiChar): Double; cdecl; external libname;
function slGetTextHeight(text: PAnsiChar): Double; cdecl; external libname;
function slLoadFont(fontFilename: PAnsiChar): Integer; cdecl; external libname;
procedure slSetFont(font: Integer; fontSize: Integer); cdecl; external libname;
procedure slSetFontSize(fontSize: Integer); cdecl; external libname;
procedure slText(x: Double; y: Double; text: PAnsiChar); cdecl; external libname;

implementation
end.
