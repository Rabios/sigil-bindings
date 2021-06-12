local sl = require("SIGIL")

-- set up our window and a few resources we need
sl.slWindow(400, 400, "Simple SIGIL Example", false)
sl.slSetFont(sl.slLoadFont("../fonts/jura.ttf"), 24)
sl.slSetTextAlign(sl.SL_ALIGN_CENTER)

while ((sl.slShouldClose() ~= 1) and (sl.slGetKey(sl.SL_KEY_ESCAPE) ~= 1)) do
  -- background glow
  sl.slSetForeColor(0.1, 0.9, 0.2, 0.4)

  -- large text and fat line
  sl.slSetForeColor(0.0, 0.8, 0.2, 1.0)
  sl.slSetFontSize(24)
  sl.slText(200, 250, "SIGIL:")
  sl.slRectangleFill(200, 240, 100, 7)

  -- smaller subtext
  sl.slSetFontSize(14)
  sl.slText(200, 220, "Sprites, text, sound, input, and more!")
  sl.slLine(48, 210, 352, 210)

  sl.slRender()     -- draw everything
end

sl.slClose()        -- close the window and shut down SIGIL