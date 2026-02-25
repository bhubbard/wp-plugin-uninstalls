<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EWD_UWCF_Trial_Happening');
delete_site_option('EWD_UWCF_Trial_Happening');
delete_option('ewd-uwcf-settings');
delete_site_option('ewd-uwcf-settings');
delete_option('EWD_UWCF_Full_Version');
delete_site_option('EWD_UWCF_Full_Version');
delete_option('ewd-uwcf-permission-level');
delete_site_option('ewd-uwcf-permission-level');
delete_option('EWD_UWCF_Table_Format');
delete_site_option('EWD_UWCF_Table_Format');
delete_option('EWD_UWCF_Allow_Sorting');
delete_site_option('EWD_UWCF_Allow_Sorting');
delete_option('EWD_UWCF_Product_Title_Displayed');
delete_site_option('EWD_UWCF_Product_Title_Displayed');
delete_option('EWD_UWCF_Product_Image_Displayed');
delete_site_option('EWD_UWCF_Product_Image_Displayed');
delete_option('EWD_UWCF_Product_Price_Displayed');
delete_site_option('EWD_UWCF_Product_Price_Displayed');
delete_option('EWD_UWCF_Product_Rating_Displayed');
delete_site_option('EWD_UWCF_Product_Rating_Displayed');
delete_option('EWD_UWCF_Product_Add_To_Cart_Displayed');
delete_site_option('EWD_UWCF_Product_Add_To_Cart_Displayed');
delete_option('EWD_UWCF_Product_Price_Enable');
delete_site_option('EWD_UWCF_Product_Price_Enable');
delete_option('EWD_UWCF_Product_Price_Display');
delete_site_option('EWD_UWCF_Product_Price_Display');
delete_option('EWD_UWCF_Enable_Colors');
delete_site_option('EWD_UWCF_Enable_Colors');
delete_option('EWD_UWCF_Color_Filters_Show_Text');
delete_site_option('EWD_UWCF_Color_Filters_Show_Text');
delete_option('EWD_UWCF_Color_Filters_Show_Color');
delete_site_option('EWD_UWCF_Color_Filters_Show_Color');
delete_option('EWD_UWCF_Color_Filters_Hide_Empty');
delete_site_option('EWD_UWCF_Color_Filters_Hide_Empty');
delete_option('EWD_UWCF_Color_Filters_Show_Product_Count');
delete_site_option('EWD_UWCF_Color_Filters_Show_Product_Count');
delete_option('EWD_UWCF_Color_Filters_Display');
delete_site_option('EWD_UWCF_Color_Filters_Display');
delete_option('EWD_UWCF_Display_Thumbnail_Colors');
delete_site_option('EWD_UWCF_Display_Thumbnail_Colors');
delete_option('EWD_UWCF_Colors_Product_Page_Display');
delete_site_option('EWD_UWCF_Colors_Product_Page_Display');
delete_option('EWD_UWCF_Colors_Used_For_Variations');
delete_site_option('EWD_UWCF_Colors_Used_For_Variations');
delete_option('EWD_UWCF_Enable_Sizes');
delete_site_option('EWD_UWCF_Enable_Sizes');
delete_option('EWD_UWCF_Size_Filters_Show_Text');
delete_site_option('EWD_UWCF_Size_Filters_Show_Text');
delete_option('EWD_UWCF_Size_Filters_Hide_Empty');
delete_site_option('EWD_UWCF_Size_Filters_Hide_Empty');
delete_option('EWD_UWCF_Size_Filters_Show_Product_Count');
delete_site_option('EWD_UWCF_Size_Filters_Show_Product_Count');
delete_option('EWD_UWCF_Size_Filters_Display');
delete_site_option('EWD_UWCF_Size_Filters_Display');
delete_option('EWD_UWCF_Display_Thumbnail_Sizes');
delete_site_option('EWD_UWCF_Display_Thumbnail_Sizes');
delete_option('EWD_UWCF_Sizes_Product_Page_Display');
delete_site_option('EWD_UWCF_Sizes_Product_Page_Display');
delete_option('EWD_UWCF_Sizes_Used_For_Variations');
delete_site_option('EWD_UWCF_Sizes_Used_For_Variations');
delete_option('EWD_UWCF_Enable_Categories');
delete_site_option('EWD_UWCF_Enable_Categories');
delete_option('EWD_UWCF_Category_Filters_Show_Text');
delete_site_option('EWD_UWCF_Category_Filters_Show_Text');
delete_option('EWD_UWCF_Category_Filters_Hide_Empty');
delete_site_option('EWD_UWCF_Category_Filters_Hide_Empty');
delete_option('EWD_UWCF_Category_Filters_Show_Product_Count');
delete_site_option('EWD_UWCF_Category_Filters_Show_Product_Count');
delete_option('EWD_UWCF_Category_Filters_Display');
delete_site_option('EWD_UWCF_Category_Filters_Display');
delete_option('EWD_UWCF_Display_Thumbnail_Categories');
delete_site_option('EWD_UWCF_Display_Thumbnail_Categories');
delete_option('EWD_UWCF_Enable_Tags');
delete_site_option('EWD_UWCF_Enable_Tags');
delete_option('EWD_UWCF_Tag_Filters_Show_Text');
delete_site_option('EWD_UWCF_Tag_Filters_Show_Text');
delete_option('EWD_UWCF_Tag_Filters_Hide_Empty');
delete_site_option('EWD_UWCF_Tag_Filters_Hide_Empty');
delete_option('EWD_UWCF_Tag_Filters_Show_Product_Count');
delete_site_option('EWD_UWCF_Tag_Filters_Show_Product_Count');
delete_option('EWD_UWCF_Tag_Filters_Display');
delete_site_option('EWD_UWCF_Tag_Filters_Display');
delete_option('EWD_UWCF_Display_Thumbnail_Tags');
delete_site_option('EWD_UWCF_Display_Thumbnail_Tags');
delete_option('EWD_UWCF_Enable_Text_Search');
delete_site_option('EWD_UWCF_Enable_Text_Search');
delete_option('EWD_UWCF_Product_Title_Filter_Type');
delete_site_option('EWD_UWCF_Product_Title_Filter_Type');
delete_option('EWD_UWCF_Enable_Autocomplete');
delete_site_option('EWD_UWCF_Enable_Autocomplete');
delete_option('EWD_UWCF_Product_Price_Filtering');
delete_site_option('EWD_UWCF_Product_Price_Filtering');
delete_option('EWD_UWCF_Enable_Ratings_Filtering');
delete_site_option('EWD_UWCF_Enable_Ratings_Filtering');
delete_option('EWD_UWCF_Product_Rating_Filter_Type');
delete_site_option('EWD_UWCF_Product_Rating_Filter_Type');
delete_option('EWD_UWCF_Ratings_Type');
delete_site_option('EWD_UWCF_Ratings_Type');
delete_option('EWD_UWCF_Enable_InStock_Filtering');
delete_site_option('EWD_UWCF_Enable_InStock_Filtering');
delete_option('EWD_UWCF_Enable_OnSale_Filtering');
delete_site_option('EWD_UWCF_Enable_OnSale_Filtering');
delete_option('EWD_UWCF_Access_Role');
delete_site_option('EWD_UWCF_Access_Role');
delete_option('EWD_UWCF_Reset_All_Button');
delete_site_option('EWD_UWCF_Reset_All_Button');
delete_option('EWD_UWCF_Color_Filters_Label');
delete_site_option('EWD_UWCF_Color_Filters_Label');
delete_option('EWD_UWCF_Show_All_Colors_Label');
delete_site_option('EWD_UWCF_Show_All_Colors_Label');
delete_option('EWD_UWCF_Show_All_Sizes_Label');
delete_site_option('EWD_UWCF_Show_All_Sizes_Label');
delete_option('EWD_UWCF_Show_All_Categories_Label');
delete_site_option('EWD_UWCF_Show_All_Categories_Label');
delete_option('EWD_UWCF_Show_All_Tags_Label');
delete_site_option('EWD_UWCF_Show_All_Tags_Label');
delete_option('EWD_UWCF_Show_All_Attributes_Label');
delete_site_option('EWD_UWCF_Show_All_Attributes_Label');
delete_option('EWD_UWCF_Rating_Label');
delete_site_option('EWD_UWCF_Rating_Label');
delete_option('EWD_UWCF_Thumbnail_Colors_Label');
delete_site_option('EWD_UWCF_Thumbnail_Colors_Label');
delete_option('EWD_UWCF_Thumbnail_Sizes_Label');
delete_site_option('EWD_UWCF_Thumbnail_Sizes_Label');
delete_option('EWD_UWCF_Thumbnail_Categories_Label');
delete_site_option('EWD_UWCF_Thumbnail_Categories_Label');
delete_option('EWD_UWCF_Thumbnail_Tags_Label');
delete_site_option('EWD_UWCF_Thumbnail_Tags_Label');
delete_option('EWD_UWCF_Product_Page_Colors_Label');
delete_site_option('EWD_UWCF_Product_Page_Colors_Label');
delete_option('EWD_UWCF_Product_Page_Sizes_Label');
delete_site_option('EWD_UWCF_Product_Page_Sizes_Label');
delete_option('EWD_UWCF_Custom_CSS');
delete_site_option('EWD_UWCF_Custom_CSS');
delete_option('EWD_UWCF_Color_Filters_Color_Shape');
delete_site_option('EWD_UWCF_Color_Filters_Color_Shape');
delete_option('EWD_UWCF_Color_Icon_Size');
delete_site_option('EWD_UWCF_Color_Icon_Size');
delete_option('EWD_UWCF_Widget_Font_Color');
delete_site_option('EWD_UWCF_Widget_Font_Color');
delete_option('EWD_UWCF_Widget_Font_Size');
delete_site_option('EWD_UWCF_Widget_Font_Size');
delete_option('EWD_UWCF_Ratings_Bar_Fill_Color');
delete_site_option('EWD_UWCF_Ratings_Bar_Fill_Color');
delete_option('EWD_UWCF_Ratings_Bar_Empty_Color');
delete_site_option('EWD_UWCF_Ratings_Bar_Empty_Color');
delete_option('EWD_UWCF_Ratings_Bar_Handle_Color');
delete_site_option('EWD_UWCF_Ratings_Bar_Handle_Color');
delete_option('EWD_UWCF_Ratings_Bar_Text_Color');
delete_site_option('EWD_UWCF_Ratings_Bar_Text_Color');
delete_option('EWD_UWCF_Ratings_Bar_Font_Size');
delete_site_option('EWD_UWCF_Ratings_Bar_Font_Size');
delete_option('EWD_UWCF_Reset_All_Button_Background_Color');
delete_site_option('EWD_UWCF_Reset_All_Button_Background_Color');
delete_option('EWD_UWCF_Reset_All_Button_Text_Color');
delete_site_option('EWD_UWCF_Reset_All_Button_Text_Color');
delete_option('EWD_UWCF_Reset_All_Button_Hover_Background_Color');
delete_site_option('EWD_UWCF_Reset_All_Button_Hover_Background_Color');
delete_option('EWD_UWCF_Reset_All_Button_Hover_Text_Color');
delete_site_option('EWD_UWCF_Reset_All_Button_Hover_Text_Color');
delete_option('EWD_UWCF_Reset_All_Button_Font_Size');
delete_site_option('EWD_UWCF_Reset_All_Button_Font_Size');
delete_option('EWD_UWCF_Shop_Thumbnails_Font_Color');
delete_site_option('EWD_UWCF_Shop_Thumbnails_Font_Color');
delete_option('EWD_UWCF_Shop_Thumbnails_Font_Size');
delete_site_option('EWD_UWCF_Shop_Thumbnails_Font_Size');
delete_option('EWD_UWCF_Shop_Thumbnails_Color_Icon_Size');
delete_site_option('EWD_UWCF_Shop_Thumbnails_Color_Icon_Size');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Displayed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Show_Text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Hide_Empty' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Product_Count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Display' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_Thumbnail_Tags' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ewd-uwcf-review-ask-time');
delete_site_option('ewd-uwcf-review-ask-time');
delete_option('EWD_UWCF_Ask_Review_Date');
delete_site_option('EWD_UWCF_Ask_Review_Date');
delete_option('ewd-uwcf-installation-time');
delete_site_option('ewd-uwcf-installation-time');
delete_option('EWD_UWCF_Install_Time');
delete_site_option('EWD_UWCF_Install_Time');
delete_option('ewd_uwcf_update_product');
delete_site_option('ewd_uwcf_update_product');

// Delete Transients
delete_transient('ewd-uwcf-getting-started');
delete_site_transient('ewd-uwcf-getting-started');
delete_transient('ewd-helper-notice-dismissed');
delete_site_transient('ewd-helper-notice-dismissed');
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EWD_UWCF_Color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EWD_UWCF_Color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EWD_UWCF_Color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EWD_UWCF_Color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EWD_UWCF_WC_Term_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EWD_UWCF_WC_Term_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EWD_UWCF_WC_Term_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EWD_UWCF_WC_Term_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EWD_UWCF_Term_Order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EWD_UWCF_Term_Order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EWD_UWCF_Term_Order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EWD_UWCF_Term_Order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

