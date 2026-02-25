<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accordion_slider_access');
delete_site_option('accordion_slider_access');
delete_option('accordion_slider_load_unminified_scripts');
delete_site_option('accordion_slider_load_unminified_scripts');
delete_option('accordion_slider_add_ons');
delete_site_option('accordion_slider_add_ons');
delete_option('accordion_slider_is_custom_css');
delete_site_option('accordion_slider_is_custom_css');
delete_option('accordion_slider_custom_css');
delete_site_option('accordion_slider_custom_css');
delete_option('accordion_slider_load_stylesheets');
delete_site_option('accordion_slider_load_stylesheets');
delete_option('accordion_slider_cache_expiry_interval');
delete_site_option('accordion_slider_cache_expiry_interval');
delete_option('accordion_slider_hide_inline_info');
delete_site_option('accordion_slider_hide_inline_info');
delete_option('accordion_slider_hide_getting_started_info');
delete_site_option('accordion_slider_hide_getting_started_info');
delete_option('accordion_slider_hide_image_size_warning');
delete_site_option('accordion_slider_hide_image_size_warning');
delete_option('accordion_slider_hide_custom_css_js_warning');
delete_site_option('accordion_slider_hide_custom_css_js_warning');
delete_option('accordion_slider_custom_js');
delete_site_option('accordion_slider_custom_js');
delete_option('accordion_slider_is_custom_js');
delete_site_option('accordion_slider_is_custom_js');
delete_option('accordion_slider_version');
delete_site_option('accordion_slider_version');
delete_option('accordion_slider_load_custom_css_js');
delete_site_option('accordion_slider_load_custom_css_js');

// Delete Transients
delete_transient('accordion_slider_add_ons_cached_data');
delete_site_transient('accordion_slider_add_ons_cached_data');
delete_transient('accordion_slider_post_names');
delete_site_transient('accordion_slider_post_names');
delete_transient('accordion_slider_posts_data');
delete_site_transient('accordion_slider_posts_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_accordion_slider_cache_%', '_site_transient_accordion_slider_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('accordion_slider_update_notification_message');
delete_site_transient('accordion_slider_update_notification_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

