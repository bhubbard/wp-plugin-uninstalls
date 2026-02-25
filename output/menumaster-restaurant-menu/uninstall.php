<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('menu_master_show_fields');
delete_site_option('menu_master_show_fields');
delete_option('menu_master_filter_options');
delete_site_option('menu_master_filter_options');
delete_option('menu_master_menu_order');
delete_site_option('menu_master_menu_order');
delete_option('menu_master_custom_category_order');
delete_site_option('menu_master_custom_category_order');
delete_option('menu_master_title_font_color');
delete_site_option('menu_master_title_font_color');
delete_option('menu_master_title_font_size');
delete_site_option('menu_master_title_font_size');
delete_option('menu_master_title_font_weight');
delete_site_option('menu_master_title_font_weight');
delete_option('menu_master_description_font_color');
delete_site_option('menu_master_description_font_color');
delete_option('menu_master_description_font_size');
delete_site_option('menu_master_description_font_size');
delete_option('menu_master_description_font_weight');
delete_site_option('menu_master_description_font_weight');
delete_option('menu_master_price_font_color');
delete_site_option('menu_master_price_font_color');
delete_option('menu_master_price_font_size');
delete_site_option('menu_master_price_font_size');
delete_option('menu_master_price_font_weight');
delete_site_option('menu_master_price_font_weight');
delete_option('menu_master_default_menu_image');
delete_site_option('menu_master_default_menu_image');
delete_option('menu_master_veg_nonveg_icons');
delete_site_option('menu_master_veg_nonveg_icons');
delete_option('menu_master_elementor_page_id');
delete_site_option('menu_master_elementor_page_id');
delete_option('menu_master_gutenberg_page_id');
delete_site_option('menu_master_gutenberg_page_id');
delete_option('menu_master_redirect');
delete_site_option('menu_master_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mmrm_ai_botkit_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mmrm_ai_botkit_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mmrm_ai_botkit_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mmrm_ai_botkit_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

