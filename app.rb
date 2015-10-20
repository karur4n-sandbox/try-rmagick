require 'RMagick'

# 文字入れ

img = Magick::ImageList.new('Lenna.jpg')

font = '/Library/Fonts/YuMincho.ttc'
draw = Magick::Draw.new
draw.annotate(img, 0, 0, 5, 5, '2014年も終わる') do
  self.font = font
  self.fill = 'red'
  self.stroke = 'transparent'
  self.pointsize = 30
  self.gravity = Magick::NorthWestGravity
end

img.write('result.jpg')
