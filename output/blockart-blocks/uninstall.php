<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_blockart_version');
delete_site_option('_blockart_version');
delete_option('_blockart_activation_redirect');
delete_site_option('_blockart_activation_redirect');
delete_option('_blockart_activation_time');
delete_site_option('_blockart_activation_time');
delete_option('_blockart_blocks_css');
delete_site_option('_blockart_blocks_css');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('_blockart_global_styles_generated_timestamp');
delete_site_option('_blockart_global_styles_generated_timestamp');
delete_option('_blockart_settings');
delete_site_option('_blockart_settings');
delete_option('_blockart_widget_css');
delete_site_option('_blockart_widget_css');
delete_option('_blockart_dynamic_css_print_method');
delete_site_option('_blockart_dynamic_css_print_method');
delete_option('downloaded_font_files');
delete_site_option('downloaded_font_files');

// Delete Transients
delete_transient('_blockart_library_data');
delete_site_transient('_blockart_library_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%]', '_site_transient_%]' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_blockart_media_items');
delete_site_transient('_blockart_media_items');

// Clear Cron Jobs
wp_clear_scheduled_hook('blockart_delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_blockart_blocks_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_blockart_blocks_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_blockart_blocks_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_blockart_blocks_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_blockart_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_blockart_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_blockart_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_blockart_review' ) );

