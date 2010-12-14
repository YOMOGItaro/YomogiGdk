# -*- coding: undecided -*-
# /**
#  * @file   ygdk_draw.rb
#  * @author YOMOGItaro
#  * @date   Mon Dec 13 17:06:30 2010
#  * 
#  * @brief  
#  * 
#  * 
#  */


module YmgGdk

  
  class Draw
    def initialize(area)
      @area = area
      @drawable = @area.window
      @gc = Gdk::GC.new(@drawable)
    end

    def alloc
      @area.allocation
    end

    def width
      alloc.width
    end

    def height
      alloc.height
    end


    # 
    def default_option
      {
        :filled => false,
        :fill_style => FillStyle::SOLID,
        :width => width,
        :height => height,
        :angle_from => 0,
        :angle_to => 360,
        :color => Color::black,
        :back_color => Color::white,
        :src_drawable => nil,
        :src_x => 0,
        :src_y => 0,
        :dest_x => 0,
        :dest_y => 0,
        :line_width => 1,
        :line_style => LineStyle::SOLID, # shape of line
        :line_cap => LineCap::BUTT,     # shape of tail end 
        :line_join => LineJoin::MITER,   # shape of angle
        :font_family => "",
        :font_style => FontStyle::NORMAL,
        :font_weight => FontWeight::MEDIUM,
        :font_size => 1100
      }
    end
    
       
    #
    def draw_anything( opt)
      opt = default_option.merge( opt)
      @gc.set_foreground( opt[:color])
      @gc.set_background( opt[:back_color])
      @gc.set_line_attributes( opt[:line_width],
                               opt[:line_style],
                               opt[:line_cap],
                               opt[:line_join])
      @gc.set_fill( opt[:fill_style])

      yield @gc, opt
    end

    def segments( segs, opt={ })
      draw_anything(opt){|gc,o|
        @drawable.draw_segments(
                                gc,
                                segs)
      }
    end

    def image( image, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_drawable(
                                gc,
                                image,
                                o[:src_x],
                                o[:src_y],
                                o[:dest_x],
                                o[:dest_y],
                                o[:width],
                                o[:height])
      }
    end

    def drawable(opt = { })
      draw_anything( drawable, opt){|gc,o|
        @drawable.draw_drawable(
                                gc,
                                drawable,
                                o[:src_x],
                                o[:src_y],
                                o[:dest_x],
                                o[:dest_y],
                                o[:width],
                                o[:height])
      }
    end

    def polygon( points=nil, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_polygon( gc, o[:filled], points)
      }
    end

    def lines( points=nil, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_lines( gc, points)
      }
    end

    def line( x1=0, y1=0, x2=0, y2=0, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_line( gc, x1, y1, x2, y2)
      }
    end

    def points(points = nil, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_points( gc, points)
      }
      
    end
    
    def point( x, y, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_point( gc, x, y)
      }
    end

    def arc( x=0, y=0, width=0, height=0, opt = { })
      draw_anything(opt){ |gc,o|
        @drawable.draw_arc( gc, o[:filled],
                            x, y, width, height,
                            o[:angle_from], o[:angle_to]*64)
      }
    end

  
    def rectangle( x1=0, y1=0, x2=0, y2=0, opt = { })
      draw_anything(opt){ |gc,o|
        @drawable.draw_rectangle( @gc, o[:filled],
                                  x1, y1, x2, y2)
      }
    end

    def triangle( x1=0, y1=0, x2=0, y2=0, x3=0, y3=0, opt = { })
      draw_anything(opt){|gc,o|
        @drawable.draw_polygon(
                               gc,
                               o[:filled],
                               [[x1,y1],
                                [x2,y2],
                                [x3,y3]])
      }
    end

    def text( message, x=0, y=0, opt={ })      
      draw_anything(opt){ |gc,o|
        fontdesc = Pango::FontDescription.new
        fontdesc.set_family("")
        layout = Pango::Layout.new(@area.pango_context)
        p fontdesc.family
        layout.font_description=fontdesc
        layout.text=message
        
        @drawable.draw_layout( @gc, x, y,layout)
      }
    end
  end
end
