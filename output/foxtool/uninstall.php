<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foxtool_font_settings');
delete_site_option('foxtool_font_settings');
delete_option('foxtool_settings');
delete_site_option('foxtool_settings');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('foxtool_ads_settings');
delete_site_option('foxtool_ads_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('foxtool_code_settings');
delete_site_option('foxtool_code_settings');
delete_option('foxtool_debug_settings');
delete_site_option('foxtool_debug_settings');
delete_option('foxtool_extend_settings');
delete_site_option('foxtool_extend_settings');
delete_option('foxtool_fontset_settings');
delete_site_option('foxtool_fontset_settings');
delete_option('foxtool_gindex_settings');
delete_site_option('foxtool_gindex_settings');
delete_option('foxtool_notify_settings');
delete_site_option('foxtool_notify_settings');
delete_option('foxtool_redirects_settings');
delete_site_option('foxtool_redirects_settings');
delete_option('foxtool_search_settings');
delete_site_option('foxtool_search_settings');
delete_option('foxtool_shortcode_settings');
delete_site_option('foxtool_shortcode_settings');
delete_option('foxtool_toc_settings');
delete_site_option('foxtool_toc_settings');

// Delete Transients
delete_transient('foxtool_index_count');
delete_site_transient('foxtool_index_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_languages');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_maybe_auto_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'toc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'toc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'toc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'toc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'foxtoolpic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'foxtoolpic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'foxtoolpic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'foxtoolpic' ) );

