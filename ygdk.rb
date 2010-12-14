# -*- coding: utf-8 -*-
# /**
#  * @file   ymg_gdk.rb
#  * @author YOMOGItaro
#  * @date   Mon Dec 13 12:49:01 2010
#  * 
#  * @brief  
#  * 
#  * 
#  */



## From
# # drawable.draw_segments(gc,[[10,10,20,20],[30,30,30,20]])
# # drawable.draw_drawable(gc,drawable,30,30, 0,100,400,100)
# # drawable.draw_polygon(gc,true,[[10,10],[20,20],[30,30],[30,20]])
# # drawable.draw_lines(gc,[[10,10],[20,20],[30,30],[30,20]])
# # drawable.draw_line(gc,10,10,20,20)
# # drawable.draw_points(gc,[[10,10],[20,20],[30,30]])
# # drawable.draw_point(gc,20,20)
# # drawable.draw_arc( gc, true,
# #                    0,0,alloc.width,alloc.height,0,64*360)
# # drawable.draw_rectangle(area.style.fg_gc(area.state), true,
# #                            0,0,100,100)

## To
# # draw.segments([[10,10,20,20],[30,30,30,20]])
# # draw.drawable(@glade["drawingarea_yamldata"].window, :dest_x => 20, :dest_y => 40, :width=>400, :height=>600)
# # draw.polygon([[10,10],[20,20],[30,30],[30,20]], :filled=>true)
# # draw.lines([[10,10],[20,20],[30,30],[30,20]])
# # draw.line(10,10,20,20)
# # draw.points([[10,10],[20,20],[30,30]])
# # draw.point(20,40)
# # draw.arc(0,0,300,600)
# # draw.rectangle(10,10,30,30,:filled=>true)
# draw.triangle( 20, 20, 200, 20, 100, 200,:filled=>true, :color=>YmgGdk::Color.blue)


require 'libglade2'

require 'yomolib/gdk/ygdk_color'
require 'yomolib/gdk/ygdk_style'
require 'yomolib/gdk/ygdk_font'

# must be in at last
require 'yomolib/gdk/ygdk_draw'





