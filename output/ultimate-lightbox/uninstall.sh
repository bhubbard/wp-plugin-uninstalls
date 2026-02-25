#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulb-settings'
wp option delete 'EWD_ULB_Full_Version'
wp option delete 'ulb-permission-level'
wp option delete 'EWD_ULB_Custom_CSS'
wp option delete 'EWD_ULB_Add_Lightbox'
wp option delete 'EWD_ULB_Image_Class_List'
wp option delete 'EWD_ULB_Image_Selector_List'
wp option delete 'EWD_ULB_Transition_Effect'
wp option delete 'EWD_ULB_Transition_Speed'
wp option delete 'EWD_ULB_Background_Close'
wp option delete 'EWD_ULB_Gallery_Loop'
wp option delete 'EWD_ULB_Mousewheel_Navigation'
wp option delete 'EWD_ULB_Curtain_Slide'
wp option delete 'EWD_ULB_Overlay_Text_Source'
wp option delete 'EWD_ULB_Disable_Other_Lightboxes'
wp option delete 'EWD_ULB_Show_Thumbnails'
wp option delete 'EWD_ULB_Show_Thumbnail_Toggle'
wp option delete 'EWD_ULB_Show_Overlay_Text'
wp option delete 'EWD_ULB_Start_Autoplay'
wp option delete 'EWD_ULB_Autoplay_Interval'
wp option delete 'EWD_ULB_Show_Progress_Bar'
wp option delete 'EWD_ULB_Hide_On_Mobile'
wp option delete 'EWD_ULB_Min_Height'
wp option delete 'EWD_ULB_Min_Width'
wp option delete 'EWD_ULB_Transition_Type'
wp option delete 'EWD_ULB_Top_Right_Controls'
wp option delete 'EWD_ULB_Top_Left_Controls'
wp option delete 'EWD_ULB_Bottom_Right_Controls'
wp option delete 'EWD_ULB_Bottom_Left_Controls'
wp option delete 'EWD_ULB_Arrow'
wp option delete 'EWD_ULB_Icon_Set'
wp option delete 'EWD_ULB_Styling_Title_Font'
wp option delete 'EWD_ULB_Styling_Title_Font_Size'
wp option delete 'EWD_ULB_Styling_Title_Font_Color'
wp option delete 'EWD_ULB_Styling_Description_Font'
wp option delete 'EWD_ULB_Styling_Description_Font_Size'
wp option delete 'EWD_ULB_Styling_Description_Font_Color'
wp option delete 'EWD_ULB_Styling_Arrow_Size'
wp option delete 'EWD_ULB_Styling_Arrow_Color'
wp option delete 'EWD_ULB_Styling_Arrow_Background_Color'
wp option delete 'EWD_ULB_Styling_Arrow_Background_Opacity'
wp option delete 'EWD_ULB_Styling_Icon_Size'
wp option delete 'EWD_ULB_Styling_Icon_Color'
wp option delete 'EWD_ULB_Styling_Background_Overlay_Color'
wp option delete 'EWD_ULB_Styling_Background_Overlay_Opacity'
wp option delete 'EWD_ULB_Styling_Toolbar_Color'
wp option delete 'EWD_ULB_Styling_Toolbar_Opacity'
wp option delete 'EWD_ULB_Styling_Image_Overlay_Color'
wp option delete 'EWD_ULB_Styling_Image_Overlay_Opacity'
wp option delete 'EWD_ULB_Styling_Thumbnail_Bar_Color'
wp option delete 'EWD_ULB_Styling_Thumbnail_Bar_Opacity'
wp option delete 'EWD_ULB_Styling_Thumbnail_Scroll_Arrow_Color'
wp option delete 'EWD_ULB_Styling_Active_Thumbnail_Border_Color'
wp option delete 'ulb-review-ask-time'
wp option delete 'EWD_ULB_Ask_Review_Date'
wp option delete 'ulb-installation-time'
wp option delete 'EWD_ULB_Install_Time'

# Delete Transients
wp transient delete 'ulb-getting-started'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EWD_ULB_Add_Lightbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EWD_ULB_Add_Lightbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EWD_ULB_Add_Lightbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EWD_ULB_Add_Lightbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EWD_ULB_Paired_Image_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EWD_ULB_Paired_Image_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EWD_ULB_Paired_Image_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EWD_ULB_Paired_Image_ID'"
