#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EWD_UWCF_Trial_Happening'
wp option delete 'ewd-uwcf-settings'
wp option delete 'EWD_UWCF_Full_Version'
wp option delete 'ewd-uwcf-permission-level'
wp option delete 'EWD_UWCF_Table_Format'
wp option delete 'EWD_UWCF_Allow_Sorting'
wp option delete 'EWD_UWCF_Product_Title_Displayed'
wp option delete 'EWD_UWCF_Product_Image_Displayed'
wp option delete 'EWD_UWCF_Product_Price_Displayed'
wp option delete 'EWD_UWCF_Product_Rating_Displayed'
wp option delete 'EWD_UWCF_Product_Add_To_Cart_Displayed'
wp option delete 'EWD_UWCF_Product_Price_Enable'
wp option delete 'EWD_UWCF_Product_Price_Display'
wp option delete 'EWD_UWCF_Enable_Colors'
wp option delete 'EWD_UWCF_Color_Filters_Show_Text'
wp option delete 'EWD_UWCF_Color_Filters_Show_Color'
wp option delete 'EWD_UWCF_Color_Filters_Hide_Empty'
wp option delete 'EWD_UWCF_Color_Filters_Show_Product_Count'
wp option delete 'EWD_UWCF_Color_Filters_Display'
wp option delete 'EWD_UWCF_Display_Thumbnail_Colors'
wp option delete 'EWD_UWCF_Colors_Product_Page_Display'
wp option delete 'EWD_UWCF_Colors_Used_For_Variations'
wp option delete 'EWD_UWCF_Enable_Sizes'
wp option delete 'EWD_UWCF_Size_Filters_Show_Text'
wp option delete 'EWD_UWCF_Size_Filters_Hide_Empty'
wp option delete 'EWD_UWCF_Size_Filters_Show_Product_Count'
wp option delete 'EWD_UWCF_Size_Filters_Display'
wp option delete 'EWD_UWCF_Display_Thumbnail_Sizes'
wp option delete 'EWD_UWCF_Sizes_Product_Page_Display'
wp option delete 'EWD_UWCF_Sizes_Used_For_Variations'
wp option delete 'EWD_UWCF_Enable_Categories'
wp option delete 'EWD_UWCF_Category_Filters_Show_Text'
wp option delete 'EWD_UWCF_Category_Filters_Hide_Empty'
wp option delete 'EWD_UWCF_Category_Filters_Show_Product_Count'
wp option delete 'EWD_UWCF_Category_Filters_Display'
wp option delete 'EWD_UWCF_Display_Thumbnail_Categories'
wp option delete 'EWD_UWCF_Enable_Tags'
wp option delete 'EWD_UWCF_Tag_Filters_Show_Text'
wp option delete 'EWD_UWCF_Tag_Filters_Hide_Empty'
wp option delete 'EWD_UWCF_Tag_Filters_Show_Product_Count'
wp option delete 'EWD_UWCF_Tag_Filters_Display'
wp option delete 'EWD_UWCF_Display_Thumbnail_Tags'
wp option delete 'EWD_UWCF_Enable_Text_Search'
wp option delete 'EWD_UWCF_Product_Title_Filter_Type'
wp option delete 'EWD_UWCF_Enable_Autocomplete'
wp option delete 'EWD_UWCF_Product_Price_Filtering'
wp option delete 'EWD_UWCF_Enable_Ratings_Filtering'
wp option delete 'EWD_UWCF_Product_Rating_Filter_Type'
wp option delete 'EWD_UWCF_Ratings_Type'
wp option delete 'EWD_UWCF_Enable_InStock_Filtering'
wp option delete 'EWD_UWCF_Enable_OnSale_Filtering'
wp option delete 'EWD_UWCF_Access_Role'
wp option delete 'EWD_UWCF_Reset_All_Button'
wp option delete 'EWD_UWCF_Color_Filters_Label'
wp option delete 'EWD_UWCF_Show_All_Colors_Label'
wp option delete 'EWD_UWCF_Show_All_Sizes_Label'
wp option delete 'EWD_UWCF_Show_All_Categories_Label'
wp option delete 'EWD_UWCF_Show_All_Tags_Label'
wp option delete 'EWD_UWCF_Show_All_Attributes_Label'
wp option delete 'EWD_UWCF_Rating_Label'
wp option delete 'EWD_UWCF_Thumbnail_Colors_Label'
wp option delete 'EWD_UWCF_Thumbnail_Sizes_Label'
wp option delete 'EWD_UWCF_Thumbnail_Categories_Label'
wp option delete 'EWD_UWCF_Thumbnail_Tags_Label'
wp option delete 'EWD_UWCF_Product_Page_Colors_Label'
wp option delete 'EWD_UWCF_Product_Page_Sizes_Label'
wp option delete 'EWD_UWCF_Custom_CSS'
wp option delete 'EWD_UWCF_Color_Filters_Color_Shape'
wp option delete 'EWD_UWCF_Color_Icon_Size'
wp option delete 'EWD_UWCF_Widget_Font_Color'
wp option delete 'EWD_UWCF_Widget_Font_Size'
wp option delete 'EWD_UWCF_Ratings_Bar_Fill_Color'
wp option delete 'EWD_UWCF_Ratings_Bar_Empty_Color'
wp option delete 'EWD_UWCF_Ratings_Bar_Handle_Color'
wp option delete 'EWD_UWCF_Ratings_Bar_Text_Color'
wp option delete 'EWD_UWCF_Ratings_Bar_Font_Size'
wp option delete 'EWD_UWCF_Reset_All_Button_Background_Color'
wp option delete 'EWD_UWCF_Reset_All_Button_Text_Color'
wp option delete 'EWD_UWCF_Reset_All_Button_Hover_Background_Color'
wp option delete 'EWD_UWCF_Reset_All_Button_Hover_Text_Color'
wp option delete 'EWD_UWCF_Reset_All_Button_Font_Size'
wp option delete 'EWD_UWCF_Shop_Thumbnails_Font_Color'
wp option delete 'EWD_UWCF_Shop_Thumbnails_Font_Size'
wp option delete 'EWD_UWCF_Shop_Thumbnails_Color_Icon_Size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Displayed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Show_Text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Hide_Empty'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Product_Count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Display'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Thumbnail_Tags'"
wp option delete 'ewd-uwcf-review-ask-time'
wp option delete 'EWD_UWCF_Ask_Review_Date'
wp option delete 'ewd-uwcf-installation-time'
wp option delete 'EWD_UWCF_Install_Time'
wp option delete 'ewd_uwcf_update_product'

# Delete Transients
wp transient delete 'ewd-uwcf-getting-started'
wp transient delete 'ewd-helper-notice-dismissed'
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_UWCF_Color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_UWCF_Color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_UWCF_Color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_UWCF_Color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_UWCF_WC_Term_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_UWCF_WC_Term_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_UWCF_WC_Term_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_UWCF_WC_Term_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_UWCF_Term_Order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_UWCF_Term_Order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_UWCF_Term_Order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_UWCF_Term_Order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
