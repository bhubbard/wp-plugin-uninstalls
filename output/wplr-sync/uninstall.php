<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplr_media_library');
delete_site_option('wplr_media_library');
delete_option('wplr_media_modals');
delete_site_option('wplr_media_modals');
delete_option('wplr_public_api');
delete_site_option('wplr_public_api');
delete_option('wplr_hide_extensions');
delete_site_option('wplr_hide_extensions');
delete_option('wplr_debugging_enabled');
delete_site_option('wplr_debugging_enabled');
delete_option('wplr_library_show_hierarchy');
delete_site_option('wplr_library_show_hierarchy');
delete_option('wplr_debuglogs');
delete_site_option('wplr_debuglogs');
delete_option('wplr_catch_errors');
delete_site_option('wplr_catch_errors');
delete_option('wplr_check_same_file');
delete_site_option('wplr_check_same_file');
delete_option('meowapps_hide_ads');
delete_site_option('meowapps_hide_ads');
delete_option('wplr_enable_keywords');
delete_site_option('wplr_enable_keywords');
delete_option('wplr_sync_keywords');
delete_site_option('wplr_sync_keywords');
delete_option('wr2x_big_image_size_threshold');
delete_site_option('wr2x_big_image_size_threshold');
delete_option('wplr_plugins');
delete_site_option('wplr_plugins');
delete_option('wplr_use_taken_date');
delete_site_option('wplr_use_taken_date');
delete_option('wplr_filename_accents');
delete_site_option('wplr_filename_accents');
delete_option('wplr_upload_folder');
delete_site_option('wplr_upload_folder');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nfw_options');
delete_site_option('nfw_options');
delete_option('wplr_media_organizer');
delete_site_option('wplr_media_organizer');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('force_sslverify');
delete_site_option('force_sslverify');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_serial' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('meowapps_hide_meowapps');
delete_site_option('meowapps_hide_meowapps');
delete_option('litespeed.conf.cache-rest');
delete_site_option('litespeed.conf.cache-rest');
delete_option('mwai_options');
delete_site_option('mwai_options');
delete_option('meowapps_news');
delete_site_option('meowapps_news');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rating_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wplr_auth_token');
delete_site_transient('wplr_auth_token');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wplr-media-size-%', '_site_transient_wplr-media-size-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplr_auth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplr_auth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplr_auth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplr_auth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_media_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_media_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_media_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_media_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

