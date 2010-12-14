# /**
#  * @file   ygdk_font.rb
#  * @author YOMOGItaro
#  * @date   Mon Dec 13 19:01:18 2010
#  * 
#  * @brief  
#  * 
#  * 
#  */


module YmgGdk
  module FontStyle 
    NORMAL = Pango::STYLE_NORMAL
    ITALIC = Pango::STYLE_ITALIC
    OBLIQUE = Pango::STYLE_OBLIQUE
  end

  module FontWeight
    BOLD = Pango::WEIGHT_BOLD
    BOOK = Pango::WEIGHT_BOOK
    HEAVY = Pango::WEIGHT_HEAVY
    LIGHT = Pango::WEIGHT_LIGHT
    MEDIUM = Pango::WEIGHT_MEDIUM
    NORMAL = Pango::WEIGHT_NORMAL
    SEMIBOLD = Pango::WEIGHT_SEMIBOLD
    THIN = Pango::WEIGHT_THIN
    ULTRABOLD = Pango::WEIGHT_ULTRABOLD
    ULTRAHEAVY = Pango::WEIGHT_ULTRAHEAVY
    ULTRALIGHT = Pango::WEIGHT_ULTRALIGHT
  end
end
