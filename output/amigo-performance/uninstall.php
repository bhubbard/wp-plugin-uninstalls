<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amigoperf_version_updated');
delete_site_option('amigoperf_version_updated');
delete_option('amigoperf_asset_cache');
delete_site_option('amigoperf_asset_cache');
delete_option('amigoperf_activation_version');
delete_site_option('amigoperf_activation_version');
delete_option('amigoperf_last_version_check');
delete_site_option('amigoperf_last_version_check');
delete_option('amigoPerf_nq_script');
delete_site_option('amigoPerf_nq_script');
delete_option('amigoPerf_nq_style');
delete_site_option('amigoPerf_nq_style');
delete_option('amigoperf_major_update_3_0');
delete_site_option('amigoperf_major_update_3_0');
delete_option('amigoPerf_rqs');
delete_site_option('amigoPerf_rqs');
delete_option('amigoPerf_remoji');
delete_site_option('amigoPerf_remoji');
delete_option('amigoPerf_defer');
delete_site_option('amigoPerf_defer');
delete_option('amigoPerf_iframelazy');
delete_site_option('amigoPerf_iframelazy');
delete_option('amigoPerf_lazyload');
delete_site_option('amigoPerf_lazyload');
delete_option('amigoPerf_minify_css');
delete_site_option('amigoPerf_minify_css');
delete_option('amigoPerf_minify_js');
delete_site_option('amigoPerf_minify_js');
delete_option('amigoPerf_plugin_version');
delete_site_option('amigoPerf_plugin_version');
delete_option('amigoperf_error_log');
delete_site_option('amigoperf_error_log');
delete_option('amigoperf_network_version');
delete_site_option('amigoperf_network_version');
delete_option('amigoperf_network_activated');
delete_site_option('amigoperf_network_activated');
delete_option('amigoperf_network_settings');
delete_site_option('amigoperf_network_settings');

// Delete Transients
delete_transient('amigoperf_stats');
delete_site_transient('amigoperf_stats');
delete_transient('amigoperf_asset_data');
delete_site_transient('amigoperf_asset_data');
delete_transient('amigoperf_version_check');
delete_site_transient('amigoperf_version_check');
delete_transient('amigoperf_network_stats');
delete_site_transient('amigoperf_network_stats');
delete_transient('amigoperf_network_version');
delete_site_transient('amigoperf_network_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amigoperf_hide_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amigoperf_hide_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amigoperf_hide_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amigoperf_hide_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amigoperf_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amigoperf_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amigoperf_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amigoperf_preferences' ) );

