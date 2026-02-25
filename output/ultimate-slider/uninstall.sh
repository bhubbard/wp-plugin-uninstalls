#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewd-us-settings'
wp option delete 'EWD_US_Full_Version'
wp option delete 'EWD_US_Custom_CSS'
wp option delete 'EWD_US_Autoplay_Slideshow'
wp option delete 'EWD_US_Autoplay_Delay'
wp option delete 'EWD_US_Autoplay_Interval'
wp option delete 'EWD_US_Autoplay_Pause_Hover'
wp option delete 'EWD_US_Transition_Time'
wp option delete 'EWD_US_Aspect_Ratio'
wp option delete 'EWD_US_Carousel'
wp option delete 'EWD_US_Carousel_Columns'
wp option delete 'EWD_US_Carousel_Link_To_Full'
wp option delete 'EWD_US_Carousel_Advance'
wp option delete 'EWD_US_Show_TinyMCE'
wp option delete 'EWD_US_Timer_Bar'
wp option delete 'EWD_US_Slide_Indicators'
wp option delete 'EWD_US_Link_Action'
wp option delete 'EWD_US_Slide_Transition_Effect'
wp option delete 'EWD_US_WC_Product_Image_Slider'
wp option delete 'EWD_US_Mobile_Aspect_Ratio'
wp option delete 'EWD_US_Hide_From_Slider'
wp option delete 'EWD_US_Hide_On_Mobile'
wp option delete 'EWD_US_Mobile_Link_To_Full'
wp option delete 'EWD_US_Title_Animate'
wp option delete 'EWD_US_Force_Full_Width'
wp option delete 'EWD_US_Add_Watermark'
wp option delete 'EWD_US_Lightbox'
wp option delete 'EWD_us_Slide_Title_Font'
wp option delete 'EWD_us_Slide_Title_Font_Size'
wp option delete 'EWD_us_Slide_Title_Font_Color'
wp option delete 'EWD_us_Slide_Text_Font'
wp option delete 'EWD_us_Slide_Text_Font_Size'
wp option delete 'EWD_us_Slide_Text_Font_Color'
wp option delete 'EWD_us_Button_Font'
wp option delete 'EWD_us_Button_Font_Size'
wp option delete 'EWD_us_Button_Background_Color'
wp option delete 'EWD_us_Button_Border_Color'
wp option delete 'EWD_us_Button_Text_Color'
wp option delete 'EWD_us_Button_Background_Hover_Color'
wp option delete 'EWD_us_Button_Border_Hover_Color'
wp option delete 'EWD_us_Button_Text_Hover_Color'
wp option delete 'EWD_us_Arrow'
wp option delete 'EWD_us_Arrow_Background_Shape'
wp option delete 'EWD_us_Arrow_Color'
wp option delete 'EWD_us_Arrow_Font_Size'
wp option delete 'EWD_us_Arrow_Background_Color'
wp option delete 'EWD_us_Arrow_Background_Size'
wp option delete 'EWD_us_Clickable_Area_Background_Color'
wp option delete 'EWD_us_Clickable_Area_Size'
wp option delete 'EWD_us_Arrow_Line_Height'
wp option delete 'ewd-us-review-ask-time'
wp option delete 'EWD_US_Ask_Review_Date'
wp option delete 'ewd-us-installation-time'
wp option delete 'EWD_US_Install_Time'
wp option delete 'ewd-us-permission-level'
wp option delete 'EWD_US_Trial_Happening'

# Delete Transients
wp transient delete 'ewd-us-getting-started'
wp transient delete 'ewd-helper-notice-dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_Content_Type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_Content_Type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_Content_Type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_Content_Type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_UPCP_Product_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_UPCP_Product_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_UPCP_Product_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_UPCP_Product_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_WC_Product_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_WC_Product_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_WC_Product_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_WC_Product_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_Max_Title_Chars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_Max_Title_Chars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_Max_Title_Chars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_Max_Title_Chars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_Max_Body_Chars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_Max_Body_Chars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_Max_Body_Chars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_Max_Body_Chars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_Image_Type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_Image_Type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_Image_Type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_Image_Type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_YouTube_URL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_YouTube_URL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_YouTube_URL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_YouTube_URL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_Buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_Buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_Buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_Buttons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_US_Slide_Order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_US_Slide_Order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_US_Slide_Order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_US_Slide_Order'"
