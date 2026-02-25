<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sliderpro_access');
delete_site_option('sliderpro_access');
delete_option('sliderpro_load_unminified_scripts');
delete_site_option('sliderpro_load_unminified_scripts');
delete_option('sliderpro_add_ons');
delete_site_option('sliderpro_add_ons');
delete_option('sliderpro_is_custom_css');
delete_site_option('sliderpro_is_custom_css');
delete_option('sliderpro_custom_css');
delete_site_option('sliderpro_custom_css');
delete_option('sliderpro_load_stylesheets');
delete_site_option('sliderpro_load_stylesheets');
delete_option('sliderpro_load_js_in_all_pages');
delete_site_option('sliderpro_load_js_in_all_pages');
delete_option('sliderpro_cache_expiry_interval');
delete_site_option('sliderpro_cache_expiry_interval');
delete_option('sliderpro_max_sliders_on_page');
delete_site_option('sliderpro_max_sliders_on_page');
delete_option('sliderpro_hide_inline_info');
delete_site_option('sliderpro_hide_inline_info');
delete_option('sliderpro_hide_getting_started_info');
delete_site_option('sliderpro_hide_getting_started_info');
delete_option('sliderpro_hide_image_size_warning');
delete_site_option('sliderpro_hide_image_size_warning');
delete_option('sliderpro_lightbox_sliders');
delete_site_option('sliderpro_lightbox_sliders');
delete_option('sliderpro_setting_presets');
delete_site_option('sliderpro_setting_presets');
delete_option('sliderpro_hide_custom_css_js_warning');
delete_site_option('sliderpro_hide_custom_css_js_warning');
delete_option('sliderpro_custom_js');
delete_site_option('sliderpro_custom_js');
delete_option('sliderpro_is_custom_js');
delete_site_option('sliderpro_is_custom_js');
delete_option('sliderpro_version');
delete_site_option('sliderpro_version');
delete_option('sliderpro_load_custom_css_js');
delete_site_option('sliderpro_load_custom_css_js');

// Delete Transients
delete_transient('sliderpro_add_ons_cached_data');
delete_site_transient('sliderpro_add_ons_cached_data');
delete_transient('sliderpro_post_names');
delete_site_transient('sliderpro_post_names');
delete_transient('sliderpro_posts_data');
delete_site_transient('sliderpro_posts_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sliderpro_cache_%', '_site_transient_sliderpro_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('sliderpro_update_notification_message');
delete_site_transient('sliderpro_update_notification_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

