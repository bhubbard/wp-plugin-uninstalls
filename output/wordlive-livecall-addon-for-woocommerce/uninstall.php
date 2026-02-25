<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordlive_howtojoinpage_slug');
delete_site_option('wordlive_howtojoinpage_slug');
delete_option('save_settings');
delete_site_option('save_settings');
delete_option('wordlive_enable_shop_page_btn');
delete_site_option('wordlive_enable_shop_page_btn');
delete_option('wordlive_button_loc_shop_page');
delete_site_option('wordlive_button_loc_shop_page');
delete_option('wordlive_enable_product_details_page_btn');
delete_site_option('wordlive_enable_product_details_page_btn');
delete_option('wordlive_button_loc_product_details_page');
delete_site_option('wordlive_button_loc_product_details_page');
delete_option('wordlive_guestlogin_enable');
delete_site_option('wordlive_guestlogin_enable');
delete_option('wordlive_loginpage_slug');
delete_site_option('wordlive_loginpage_slug');
delete_option('wordlive_livecall_slug');
delete_site_option('wordlive_livecall_slug');
delete_option('wordlive_livecall_btn_text');
delete_site_option('wordlive_livecall_btn_text');
delete_option('wordlive_livecall_btn_width');
delete_site_option('wordlive_livecall_btn_width');
delete_option('wordlive_livecall_btn_height');
delete_site_option('wordlive_livecall_btn_height');
delete_option('wordlive_livecall_btn_margin_type');
delete_site_option('wordlive_livecall_btn_margin_type');
delete_option('wordlive_livecall_btn_margin_top');
delete_site_option('wordlive_livecall_btn_margin_top');
delete_option('wordlive_livecall_btn_margin_right');
delete_site_option('wordlive_livecall_btn_margin_right');
delete_option('wordlive_livecall_btn_margin_bottom');
delete_site_option('wordlive_livecall_btn_margin_bottom');
delete_option('wordlive_livecall_btn_margin_left');
delete_site_option('wordlive_livecall_btn_margin_left');
delete_option('wordlive_livecall_btn_padding_type');
delete_site_option('wordlive_livecall_btn_padding_type');
delete_option('wordlive_livecall_btn_padding_top');
delete_site_option('wordlive_livecall_btn_padding_top');
delete_option('wordlive_livecall_btn_padding_right');
delete_site_option('wordlive_livecall_btn_padding_right');
delete_option('wordlive_livecall_btn_padding_bottom');
delete_site_option('wordlive_livecall_btn_padding_bottom');
delete_option('wordlive_livecall_btn_padding_left');
delete_site_option('wordlive_livecall_btn_padding_left');
delete_option('wordlive_livecall_btn_textalign');
delete_site_option('wordlive_livecall_btn_textalign');
delete_option('wordlive_livecall_btn_font_size');
delete_site_option('wordlive_livecall_btn_font_size');
delete_option('wordlive_livecall_btn_fontfamily');
delete_site_option('wordlive_livecall_btn_fontfamily');
delete_option('wordlive_livecall_btn_text_color');
delete_site_option('wordlive_livecall_btn_text_color');
delete_option('wordlive_livecall_btn_border_width');
delete_site_option('wordlive_livecall_btn_border_width');
delete_option('wordlive_livecall_btn_border_color');
delete_site_option('wordlive_livecall_btn_border_color');
delete_option('wordlive_livecall_btn_border_radius');
delete_site_option('wordlive_livecall_btn_border_radius');
delete_option('wordlive_livecall_btn_bg_color');
delete_site_option('wordlive_livecall_btn_bg_color');
delete_option('wordlive_livecall_btn_font_size_hover');
delete_site_option('wordlive_livecall_btn_font_size_hover');
delete_option('wordlive_livecall_btn_text_color_hover');
delete_site_option('wordlive_livecall_btn_text_color_hover');
delete_option('wordlive_livecall_btn_border_width_hover');
delete_site_option('wordlive_livecall_btn_border_width_hover');
delete_option('wordlive_livecall_btn_border_color_hover');
delete_site_option('wordlive_livecall_btn_border_color_hover');
delete_option('wordlive_livecall_btn_border_radius_hover');
delete_site_option('wordlive_livecall_btn_border_radius_hover');
delete_option('wordlive_livecall_btn_bg_color_hover');
delete_site_option('wordlive_livecall_btn_bg_color_hover');
delete_option('wordlive_seller_email_subject');
delete_site_option('wordlive_seller_email_subject');
delete_option('wordlive_seller_email_temp');
delete_site_option('wordlive_seller_email_temp');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

