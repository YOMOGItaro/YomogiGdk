# /**
#  * @file   ygdk_color.rb
#  * @author YOMOGItaro
#  * @date   Mon Dec 13 17:08:57 2010
#  * 
#  * @brief  
#  * 
#  * 
#  */


module YmgGdk
  module Color

    def self.create(colormap,red,green,blue)
      color = Gdk::Color.new(red,green,blue)
      colormap.alloc_color(color, false,true)
      return color
    end

    def self.black
      @@YmgGdkBlack
    end

    def self.white
      @@YmgGdkWhite
    end

    def self.red
      @@YmgGdkRed
    end
      
    def self.green
      @@YmgGdkGreen
    end

    def self.blue
      @@YmgGdkBlue
    end

    @@colormap = Gdk::Colormap.system
    @@YmgGdkBlack = YmgGdk::Color.create( @@colormap, 0,0,0)
    @@YmgGdkWhite = YmgGdk::Color.create( @@colormap, 65535,65535,65535)
    @@YmgGdkRed = YmgGdk::Color.create( @@colormap, 65535,0,0)
    @@YmgGdkGreen = YmgGdk::Color.create( @@colormap, 0,65535,0)
    @@YmgGdkBlue = YmgGdk::Color.create( @@colormap, 0,0,65535)
  end
end
