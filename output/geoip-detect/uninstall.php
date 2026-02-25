<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'geoip-detect-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('geoip_detect2_dynamic-reverse-proxies_last_updated');
delete_site_option('geoip_detect2_dynamic-reverse-proxies_last_updated');
delete_option('geoip-detect-ajax_enabled');
delete_site_option('geoip-detect-ajax_enabled');
delete_option('geoip-detect-ajax_set_css_country');
delete_site_option('geoip-detect-ajax_set_css_country');
delete_option('geoip-detect-ajax_shortcodes');
delete_site_option('geoip-detect-ajax_shortcodes');
delete_option('geoip-detect-ajax_enqueue_js');
delete_site_option('geoip-detect-ajax_enqueue_js');
delete_option('geoip-detect-trusted_proxy_ips');
delete_site_option('geoip-detect-trusted_proxy_ips');
delete_option('geoip-detect-has_reverse_proxy');
delete_site_option('geoip-detect-has_reverse_proxy');
delete_option('geoip-detect-external_ip');
delete_site_option('geoip-detect-external_ip');
delete_option('geoip-detect-source');
delete_site_option('geoip-detect-source');
delete_option('geoip-detect-auto_license_key');
delete_site_option('geoip-detect-auto_license_key');
delete_option('geoip-detect-auto_license_id');
delete_site_option('geoip-detect-auto_license_id');
delete_option('geoip-detect-auto_downloaded_file');
delete_site_option('geoip-detect-auto_downloaded_file');
delete_option('geoip-detect-fastah_key');
delete_site_option('geoip-detect-fastah_key');
delete_option('geoip-detect-fastah_http2');
delete_site_option('geoip-detect-fastah_http2');
delete_option('geoip-detect-header-provider');
delete_site_option('geoip-detect-header-provider');
delete_option('geoip-detect-ipstack_key');
delete_site_option('geoip-detect-ipstack_key');
delete_option('geoip-detect-ipstack_ssl');
delete_site_option('geoip-detect-ipstack_ssl');
delete_option('geoip_detect2_maxmind_ccpa_blacklist_last_updated');
delete_site_option('geoip_detect2_maxmind_ccpa_blacklist_last_updated');
delete_option('geoip_detect2_maxmind_ccpa_blacklist');
delete_site_option('geoip_detect2_maxmind_ccpa_blacklist');
delete_option('geoip-detect-manual_file');
delete_site_option('geoip-detect-manual_file');
delete_option('geoip-detect-manual_file_validated');
delete_site_option('geoip-detect-manual_file_validated');
delete_option('geoip-detect-precision_api_type');
delete_site_option('geoip-detect-precision_api_type');
delete_option('geoip-detect-precision-remaining_credits');
delete_site_option('geoip-detect-precision-remaining_credits');
delete_option('geoip-detect-precision-user_id');
delete_site_option('geoip-detect-precision-user_id');
delete_option('geoip-detect-precision-user_secret');
delete_site_option('geoip-detect-precision-user_secret');
delete_option('geoip-detect-ui-has-chosen-source');
delete_site_option('geoip-detect-ui-has-chosen-source');
delete_option('geoip-detect-set_css_country');
delete_site_option('geoip-detect-set_css_country');
delete_option('geoip-detect-disable_pagecache');
delete_site_option('geoip-detect-disable_pagecache');
delete_option('geoip-detect-dynamic_reverse_proxies');
delete_site_option('geoip-detect-dynamic_reverse_proxies');
delete_option('geoip-detect-dynamic_reverse_proxy_type');
delete_site_option('geoip-detect-dynamic_reverse_proxy_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'geoip-detect-logger-last-error%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('geoip-detect-ajax_beta');
delete_site_option('geoip-detect-ajax_beta');
delete_option('geoip-detect-plugin_version');
delete_site_option('geoip-detect-plugin_version');

// Delete Transients
delete_transient('geoip_detect_external_ip');
delete_site_transient('geoip_detect_external_ip');

// Clear Cron Jobs
wp_clear_scheduled_hook('geoipdetectupdate');
wp_clear_scheduled_hook('geoipdetectccpaupdate');
wp_clear_scheduled_hook('geoipdetectdynamicproxiesupdate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geoip_detect_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geoip_detect_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geoip_detect_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geoip_detect_dismissed_notices' ) );

