-- Written by Rabia Alhaffar in June 8, 2021
-- Lua bindings for SIGIL via FFI!
-- http://www.libsigil.com
-- Updated: June 10, 2021
local ffi = require("ffi")

ffi.cdef([[
enum {
    // text alignment symbolic constants
    SL_ALIGN_CENTER             = 0,
    SL_ALIGN_RIGHT              = 1,
    SL_ALIGN_LEFT               = 2,

    // input key symbolic constants
    SL_KEY_ESCAPE               = 256,
    SL_KEY_ENTER                = 257,
    SL_KEY_TAB                  = 258,
    SL_KEY_BACKSPACE            = 259,
    SL_KEY_INSERT               = 260,
    SL_KEY_DELETE               = 261,
    SL_KEY_RIGHT                = 262,
    SL_KEY_LEFT                 = 263,
    SL_KEY_DOWN                 = 264,
    SL_KEY_UP                   = 265,
    SL_KEY_PAGE_UP              = 266,
    SL_KEY_PAGE_DOWN            = 267,
    SL_KEY_HOME                 = 268,
    SL_KEY_END                  = 269,
    SL_KEY_CAPS_LOCK            = 280,
    SL_KEY_SCROLL_LOCK          = 281,
    SL_KEY_NUM_LOCK             = 282,
    SL_KEY_PRINT_SCREEN         = 283,
    SL_KEY_PAUSE                = 284,
    SL_KEY_F1                   = 290,
    SL_KEY_F2                   = 291,
    SL_KEY_F3                   = 292,
    SL_KEY_F4                   = 293,
    SL_KEY_F5                   = 294,
    SL_KEY_F6                   = 295,
    SL_KEY_F7                   = 296,
    SL_KEY_F8                   = 297,
    SL_KEY_F9                   = 298,
    SL_KEY_F10                  = 299,
    SL_KEY_F11                  = 300,
    SL_KEY_F12                  = 301,
    SL_KEY_F13                  = 302,
    SL_KEY_F14                  = 303,
    SL_KEY_F15                  = 304,
    SL_KEY_F16                  = 305,
    SL_KEY_F17                  = 306,
    SL_KEY_F18                  = 307,
    SL_KEY_F19                  = 308,
    SL_KEY_F20                  = 309,
    SL_KEY_F21                  = 310,
    SL_KEY_F22                  = 311,
    SL_KEY_F23                  = 312,
    SL_KEY_F24                  = 313,
    SL_KEY_F25                  = 314,
    SL_KEY_KEYPAD_0             = 320,
    SL_KEY_KEYPAD_1             = 321,
    SL_KEY_KEYPAD_2             = 322,
    SL_KEY_KEYPAD_3             = 323,
    SL_KEY_KEYPAD_4             = 324,
    SL_KEY_KEYPAD_5             = 325,
    SL_KEY_KEYPAD_6             = 326,
    SL_KEY_KEYPAD_7             = 327,
    SL_KEY_KEYPAD_8             = 328,
    SL_KEY_KEYPAD_9             = 329,
    SL_KEY_KEYPAD_DECIMAL       = 330,
    SL_KEY_KEYPAD_DIVIDE        = 331,
    SL_KEY_KEYPAD_MULTIPLY      = 332,
    SL_KEY_KEYPAD_SUBTRACT      = 333,
    SL_KEY_KEYPAD_ADD           = 334,
    SL_KEY_KEYPAD_ENTER         = 335,
    SL_KEY_KEYPAD_EQUAL         = 336,
    SL_KEY_LEFT_SHIFT           = 340,
    SL_KEY_LEFT_CONTROL         = 341,
    SL_KEY_LEFT_ALT             = 342,
    SL_KEY_LEFT_SUPER           = 343,
    SL_KEY_RIGHT_SHIFT          = 344,
    SL_KEY_RIGHT_CONTROL        = 345,
    SL_KEY_RIGHT_ALT            = 346,
    SL_KEY_RIGHT_SUPER          = 347,

    // mouse input symbolic constants
    SL_MOUSE_BUTTON_1           = 0,
    SL_MOUSE_BUTTON_2           = 1,
    SL_MOUSE_BUTTON_3           = 2,
    SL_MOUSE_BUTTON_4           = 3,
    SL_MOUSE_BUTTON_5           = 4,
    SL_MOUSE_BUTTON_6           = 5,
    SL_MOUSE_BUTTON_7           = 6,
    SL_MOUSE_BUTTON_8           = 7,
    SL_MOUSE_BUTTON_LEFT        = SL_MOUSE_BUTTON_1,
    SL_MOUSE_BUTTON_RIGHT       = SL_MOUSE_BUTTON_2,
    SL_MOUSE_BUTTON_MIDDLE      = SL_MOUSE_BUTTON_3,
};

// initialization commands

void slWindow(int width, int height, const char *title, int fullScreen);
void slShowCursor(int showCursor);
void slClose();
int slShouldClose();

// simple input

int slGetKey(int key);

int slGetMouseButton(int button);
int slGetMouseX();
int slGetMouseY();

// simple frame timing

double slGetDeltaTime();
double slGetTime();

// rendering commands

void slRender();

// color control

void slSetBackColor(double red, double green, double blue);
void slSetForeColor(double red, double green, double blue, double alpha);

// blending control

void slSetAdditiveBlend(int additiveBlend);

// transformations

void slPush();
void slPop();

void slTranslate(double x, double y);
void slRotate(double degrees);
void slScale(double x, double y);

// texture loading

int slLoadTexture(const char *filename);

// sound loading and playing

int slLoadWAV(const char *filename);
int slSoundPlay(int sound);
int slSoundLoop(int sound);
void slSoundPause(int sound);
void slSoundStop(int sound);
void slSoundPauseAll();
void slSoundResumeAll();
void slSoundStopAll();
int slSoundPlaying(int sound);
int slSoundLooping(int sound);

// simple shape commands

void slTriangleFill(double x, double y, double width, double height);
void slTriangleOutline(double x, double y, double width, double height);

void slRectangleFill(double x, double y, double width, double height);
void slRectangleOutline(double x, double y, double width, double height);

void slCircleFill(double x, double y, double radius, int numVertices);
void slCircleOutline(double x, double y, double radius, int numVertices);

void slSemiCircleFill(double x, double y, double radius, int numVertices, double degrees);
void slSemiCircleOutline(double x, double y, double radius, int numVertices, double degrees);

void slPoint(double x, double y);

void slLine(double x1, double y1, double x2, double y2);

void slSetSpriteTiling(double x, double y);
void slSetSpriteScroll(double x, double y);
void slSprite(int texture, double x, double y, double width, double height);

// text commands

void slSetTextAlign(int fontAlign);
double slGetTextWidth(const char *text);
double slGetTextHeight(const char *text);
int slLoadFont(const char *fontFilename);
void slSetFont(int font, int fontSize);
void slSetFontSize(int fontSize);
void slText(double x, double y, const char *text);
]])

if (ffi.os == "Windows") then
  local f = io.open("sigil.dll", "r")
  
  if f ~= nil then
    f:close()
    return ffi.load("sigil")
  else
    return ffi.load("libsigil")
  end
else
  return ffi.load("libsigil")
end
