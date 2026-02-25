<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtoc_plugin_do_activation_redirect');
delete_site_option('rtoc_plugin_do_activation_redirect');
delete_option('rtoc_title');
delete_site_option('rtoc_title');
delete_option('rtoc_title_display');
delete_site_option('rtoc_title_display');
delete_option('rtoc_display');
delete_site_option('rtoc_display');
delete_option('rtoc_exclude_post_toc');
delete_site_option('rtoc_exclude_post_toc');
delete_option('rtoc_exclude_page_toc');
delete_site_option('rtoc_exclude_page_toc');
delete_option('rtoc_initial_display');
delete_site_option('rtoc_initial_display');
delete_option('rtoc_headline_display');
delete_site_option('rtoc_headline_display');
delete_option('rtoc_open_text');
delete_site_option('rtoc_open_text');
delete_option('rtoc_close_text');
delete_site_option('rtoc_close_text');
delete_option('rtoc_font');
delete_site_option('rtoc_font');
delete_option('rtoc_display_headline_amount');
delete_site_option('rtoc_display_headline_amount');
delete_option('rtoc_list_h2_type');
delete_site_option('rtoc_list_h2_type');
delete_option('rtoc_list_h3_type');
delete_site_option('rtoc_list_h3_type');
delete_option('rtoc_color');
delete_site_option('rtoc_color');
delete_option('rtoc_title_color');
delete_site_option('rtoc_title_color');
delete_option('rtoc_text_color');
delete_site_option('rtoc_text_color');
delete_option('rtoc_border_color');
delete_site_option('rtoc_border_color');
delete_option('rtoc_h2_color');
delete_site_option('rtoc_h2_color');
delete_option('rtoc_h3_color');
delete_site_option('rtoc_h3_color');
delete_option('rtoc_back_button_color');
delete_site_option('rtoc_back_button_color');
delete_option('rtoc_frame_design');
delete_site_option('rtoc_frame_design');
delete_option('rtoc_animation');
delete_site_option('rtoc_animation');
delete_option('rtoc_scroll_animation');
delete_site_option('rtoc_scroll_animation');
delete_option('rtoc_back_toc_button');
delete_site_option('rtoc_back_toc_button');
delete_option('rtoc_display_top');
delete_site_option('rtoc_display_top');
delete_option('rtoc_back_text');
delete_site_option('rtoc_back_text');
delete_option('rtoc_back_button_position');
delete_site_option('rtoc_back_button_position');
delete_option('rtoc_back_button_vertical_position');
delete_site_option('rtoc_back_button_vertical_position');
delete_option('rtoc_exclude_css');
delete_site_option('rtoc_exclude_css');
delete_option('rtoc_exclude_openclose');
delete_site_option('rtoc_exclude_openclose');
delete_option('rtoc_back_toc_pc');
delete_site_option('rtoc_back_toc_pc');
delete_option('rtoc_category_added');
delete_site_option('rtoc_category_added');
delete_option('rtoc_back_color');
delete_site_option('rtoc_back_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jinr_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jinr_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jinr_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jinr_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jinr_category_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jinr_category_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jinr_category_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jinr_category_edit' ) );

