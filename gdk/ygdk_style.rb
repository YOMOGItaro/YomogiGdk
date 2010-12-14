# -*- coding: utf-8 -*-
# /**
#  * @file   ygdk_style.rb
#  * @author YOMOGItaro
#  * @date   Mon Dec 13 17:11:00 2010
#  * 
#  * @brief  
#  * 
#  * 
#  */



module YmgGdk



  module LineStyle
    SOLID = Gdk::GC::LineStyle::SOLID
    # shape like "- - - - -"
    ON_OFF_DASH = Gdk::GC::LineStyle::ON_OFF_DASH
    # shape like ". . . . . ."
    DOUBLE_DASH = Gdk::GC::LineStyle::DOUBLE_DASH
  end


  module LineCap
    # just few short
    NOT_LASH = Gdk::GC::CapStyle::NOT_LAST
    # just meet
    BUTT = Gdk::GC::CapStyle::BUTT
    # end like circle
    ROUND = Gdk::GC::CapStyle::ROUND
    # just few long
    PROJECTING = Gdk::GC::CapStyle::PROJECTING
  end

  module LineJoin
    # sharp angle
    MITER = Gdk::GC::JoinStyle::MITER
    ROUND = Gdk::GC::JoinStyle::ROUND
    # |/- 
    BEVEL = Gdk::GC::JoinStyle::BEVEL
  end

  module FillStyle
    # 
    SOLID = Gdk::GC::Fill::SOLID
    # //////
    STIPPLED = Gdk::GC::Fill::STIPPLED
    # ■■■■■
    TILED = Gdk::GC::Fill::TILED
    #XXXXXXXXXXXXXX
    OPAQUE_STIPPLED = Gdk::GC::Fill::OPAQUE_STIPPLED

  end
  
end
