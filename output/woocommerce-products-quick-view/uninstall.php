<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clean_on_deletion' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_font_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_style_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('quick_view_ultimate_enable');
delete_site_option('quick_view_ultimate_enable');
delete_option('quick_view_ultimate_popup_content');
delete_site_option('quick_view_ultimate_popup_content');
delete_option('wc_quick_view_ultimate_version');
delete_site_option('wc_quick_view_ultimate_version');
delete_option('wc_quick_view_lite_version');
delete_site_option('wc_quick_view_lite_version');
delete_option('wc_quick_view_ultimate_just_installed');
delete_site_option('wc_quick_view_ultimate_just_installed');
delete_option('wc_product_quick_view_style_version');
delete_site_option('wc_product_quick_view_style_version');
delete_option('quick_view_template_global_settings');
delete_site_option('quick_view_template_global_settings');
delete_option('quick_view_ultimate_popup_tool');
delete_site_option('quick_view_ultimate_popup_tool');
delete_option('woocommerce_enable_review_rating');
delete_site_option('woocommerce_enable_review_rating');
delete_option('quick_view_ultimate_on_hover_bt_text');
delete_site_option('quick_view_ultimate_on_hover_bt_text');
delete_option('quick_view_ultimate_on_hover_bt_alink');
delete_site_option('quick_view_ultimate_on_hover_bt_alink');
delete_option('quick_view_ultimate_on_hover_bt_padding_tb');
delete_site_option('quick_view_ultimate_on_hover_bt_padding_tb');
delete_option('quick_view_ultimate_on_hover_bt_padding_lr');
delete_site_option('quick_view_ultimate_on_hover_bt_padding_lr');
delete_option('quick_view_ultimate_on_hover_bt_bg');
delete_site_option('quick_view_ultimate_on_hover_bt_bg');
delete_option('quick_view_ultimate_on_hover_bt_bg_from');
delete_site_option('quick_view_ultimate_on_hover_bt_bg_from');
delete_option('quick_view_ultimate_on_hover_bt_bg_to');
delete_site_option('quick_view_ultimate_on_hover_bt_bg_to');
delete_option('quick_view_ultimate_on_hover_bt_border');
delete_site_option('quick_view_ultimate_on_hover_bt_border');
delete_option('quick_view_ultimate_on_hover_bt_font');
delete_site_option('quick_view_ultimate_on_hover_bt_font');
delete_option('quick_view_ultimate_on_hover_bt_shadow');
delete_site_option('quick_view_ultimate_on_hover_bt_shadow');
delete_option('quick_view_ultimate_on_hover_bt_transparent');
delete_site_option('quick_view_ultimate_on_hover_bt_transparent');
delete_option('quick_view_ultimate_type');
delete_site_option('quick_view_ultimate_type');
delete_option('quick_view_ultimate_under_image_bt_type');
delete_site_option('quick_view_ultimate_under_image_bt_type');
delete_option('quick_view_ultimate_under_image_bt_alink');
delete_site_option('quick_view_ultimate_under_image_bt_alink');
delete_option('quick_view_ultimate_under_image_link_text');
delete_site_option('quick_view_ultimate_under_image_link_text');
delete_option('quick_view_ultimate_under_image_link_font');
delete_site_option('quick_view_ultimate_under_image_link_font');
delete_option('quick_view_ultimate_under_image_link_font_hover_color');
delete_site_option('quick_view_ultimate_under_image_link_font_hover_color');
delete_option('quick_view_ultimate_under_image_bt_text');
delete_site_option('quick_view_ultimate_under_image_bt_text');
delete_option('quick_view_ultimate_under_image_bt_padding_tb');
delete_site_option('quick_view_ultimate_under_image_bt_padding_tb');
delete_option('quick_view_ultimate_under_image_bt_padding_lr');
delete_site_option('quick_view_ultimate_under_image_bt_padding_lr');
delete_option('quick_view_ultimate_under_image_bt_bg');
delete_site_option('quick_view_ultimate_under_image_bt_bg');
delete_option('quick_view_ultimate_under_image_bt_bg_from');
delete_site_option('quick_view_ultimate_under_image_bt_bg_from');
delete_option('quick_view_ultimate_under_image_bt_bg_to');
delete_site_option('quick_view_ultimate_under_image_bt_bg_to');
delete_option('quick_view_ultimate_under_image_bt_border');
delete_site_option('quick_view_ultimate_under_image_bt_border');
delete_option('quick_view_ultimate_under_image_bt_font');
delete_site_option('quick_view_ultimate_under_image_bt_font');
delete_option('quick_view_ultimate_under_image_bt_margin');
delete_site_option('quick_view_ultimate_under_image_bt_margin');
delete_option('quick_view_ultimate_card_class_trigger');
delete_site_option('quick_view_ultimate_card_class_trigger');
delete_option('quick_view_ultimate_colorbox_center_on_scroll');
delete_site_option('quick_view_ultimate_colorbox_center_on_scroll');
delete_option('quick_view_ultimate_colorbox_transition');
delete_site_option('quick_view_ultimate_colorbox_transition');
delete_option('quick_view_ultimate_colorbox_speed');
delete_site_option('quick_view_ultimate_colorbox_speed');
delete_option('quick_view_ultimate_colorbox_overlay_color');
delete_site_option('quick_view_ultimate_colorbox_overlay_color');
delete_option('quick_view_ultimate_prettyphoto_speed');
delete_site_option('quick_view_ultimate_prettyphoto_speed');
delete_option('quick_view_ultimate_prettyphoto_overlay_color');
delete_site_option('quick_view_ultimate_prettyphoto_overlay_color');
delete_option('quick_view_ultimate_colorbox_popup_width');
delete_site_option('quick_view_ultimate_colorbox_popup_width');
delete_option('quick_view_ultimate_colorbox_popup_height');
delete_site_option('quick_view_ultimate_colorbox_popup_height');
delete_option('quick_view_ultimate_prettyphoto_popup_width');
delete_site_option('quick_view_ultimate_prettyphoto_popup_width');
delete_option('quick_view_template_dynamic_gallery_activate');
delete_site_option('quick_view_template_dynamic_gallery_activate');
delete_option('quick_view_ultimate_on_hover_bt_border_width');
delete_site_option('quick_view_ultimate_on_hover_bt_border_width');
delete_option('quick_view_ultimate_on_hover_bt_border_style');
delete_site_option('quick_view_ultimate_on_hover_bt_border_style');
delete_option('quick_view_ultimate_on_hover_bt_border_color');
delete_site_option('quick_view_ultimate_on_hover_bt_border_color');
delete_option('quick_view_ultimate_on_hover_bt_rounded');
delete_site_option('quick_view_ultimate_on_hover_bt_rounded');
delete_option('quick_view_ultimate_on_hover_bt_font_family');
delete_site_option('quick_view_ultimate_on_hover_bt_font_family');
delete_option('quick_view_ultimate_on_hover_bt_font_size');
delete_site_option('quick_view_ultimate_on_hover_bt_font_size');
delete_option('quick_view_ultimate_on_hover_bt_font_style');
delete_site_option('quick_view_ultimate_on_hover_bt_font_style');
delete_option('quick_view_ultimate_on_hover_bt_font_color');
delete_site_option('quick_view_ultimate_on_hover_bt_font_color');
delete_option('quick_view_ultimate_on_hover_bt_enable_shadow');
delete_site_option('quick_view_ultimate_on_hover_bt_enable_shadow');
delete_option('quick_view_ultimate_on_hover_bt_shadow_color');
delete_site_option('quick_view_ultimate_on_hover_bt_shadow_color');
delete_option('quick_view_ultimate_under_image_link_font_family');
delete_site_option('quick_view_ultimate_under_image_link_font_family');
delete_option('quick_view_ultimate_under_image_link_font_size');
delete_site_option('quick_view_ultimate_under_image_link_font_size');
delete_option('quick_view_ultimate_under_image_link_font_style');
delete_site_option('quick_view_ultimate_under_image_link_font_style');
delete_option('quick_view_ultimate_under_image_link_font_color');
delete_site_option('quick_view_ultimate_under_image_link_font_color');
delete_option('quick_view_ultimate_under_image_bt_border_width');
delete_site_option('quick_view_ultimate_under_image_bt_border_width');
delete_option('quick_view_ultimate_under_image_bt_border_style');
delete_site_option('quick_view_ultimate_under_image_bt_border_style');
delete_option('quick_view_ultimate_under_image_bt_border_color');
delete_site_option('quick_view_ultimate_under_image_bt_border_color');
delete_option('quick_view_ultimate_under_image_bt_rounded');
delete_site_option('quick_view_ultimate_under_image_bt_rounded');
delete_option('quick_view_ultimate_under_image_bt_font_family');
delete_site_option('quick_view_ultimate_under_image_bt_font_family');
delete_option('quick_view_ultimate_under_image_bt_font_size');
delete_site_option('quick_view_ultimate_under_image_bt_font_size');
delete_option('quick_view_ultimate_under_image_bt_font_style');
delete_site_option('quick_view_ultimate_under_image_bt_font_style');
delete_option('quick_view_ultimate_under_image_bt_font_color');
delete_site_option('quick_view_ultimate_under_image_bt_font_color');
delete_option('quick_view_ultimate_fancybox_overlay_color');
delete_site_option('quick_view_ultimate_fancybox_overlay_color');
delete_option('quick_view_template_gallery_style_settings');
delete_site_option('quick_view_template_gallery_style_settings');
delete_option('quick_view_template_control_settings');
delete_site_option('quick_view_template_control_settings');
delete_option('quick_view_template_product_title_settings');
delete_site_option('quick_view_template_product_title_settings');
delete_option('quick_view_template_product_rating_settings');
delete_site_option('quick_view_template_product_rating_settings');
delete_option('quick_view_template_product_description_settings');
delete_site_option('quick_view_template_product_description_settings');
delete_option('quick_view_template_product_meta_settings');
delete_site_option('quick_view_template_product_meta_settings');
delete_option('quick_view_template_product_price_settings');
delete_site_option('quick_view_template_product_price_settings');
delete_option('quick_view_template_quantity_selector_settings');
delete_site_option('quick_view_template_quantity_selector_settings');
delete_option('quick_view_template_addtocart_settings');
delete_site_option('quick_view_template_addtocart_settings');
delete_option('quick_view_template_readmore_settings');
delete_site_option('quick_view_template_readmore_settings');
delete_option('quick_view_template_gallery_thumbnails_settings');
delete_site_option('quick_view_template_gallery_thumbnails_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_toggle_box_open' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-custom-boxes' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('quick_view_ultimate_under_image_bt_class');
delete_site_option('quick_view_ultimate_under_image_bt_class');
delete_option('quick_view_ultimate_fancybox_popup_width');
delete_site_option('quick_view_ultimate_fancybox_popup_width');
delete_option('quick_view_ultimate_fancybox_popup_height');
delete_site_option('quick_view_ultimate_fancybox_popup_height');
delete_option('quick_view_ultimate_fancybox_center_on_scroll');
delete_site_option('quick_view_ultimate_fancybox_center_on_scroll');
delete_option('quick_view_ultimate_fancybox_transition_in');
delete_site_option('quick_view_ultimate_fancybox_transition_in');
delete_option('quick_view_ultimate_fancybox_transition_out');
delete_site_option('quick_view_ultimate_fancybox_transition_out');
delete_option('quick_view_ultimate_fancybox_speed_in');
delete_site_option('quick_view_ultimate_fancybox_speed_in');
delete_option('quick_view_ultimate_fancybox_speed_out');
delete_site_option('quick_view_ultimate_fancybox_speed_out');
delete_option('quick_view_template_gallery_icon_styles_settings');
delete_site_option('quick_view_template_gallery_icon_styles_settings');
delete_option('quick_view_template_product_data_settings');
delete_site_option('quick_view_template_product_data_settings');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_status', '_site_transient_%_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocommerce_exclude_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocommerce_exclude_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocommerce_exclude_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocommerce_exclude_image' ) );

