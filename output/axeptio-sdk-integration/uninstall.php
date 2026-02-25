<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xpwp_sdk_active');
delete_site_option('xpwp_sdk_active');
delete_option('xpwp_client_id');
delete_site_option('xpwp_client_id');
delete_option('xpwp_version');
delete_site_option('xpwp_version');
delete_option('axeptio_versions');
delete_site_option('axeptio_versions');
delete_option('axeptio/sdk_proxy_key');
delete_site_option('axeptio/sdk_proxy_key');
delete_option('axeptio/need_flush');
delete_site_option('axeptio/need_flush');
delete_option('axeptio_plugin_activated');
delete_site_option('axeptio_plugin_activated');
delete_option('axeptio_settings');
delete_site_option('axeptio_settings');
delete_option('axeptio/version');
delete_site_option('axeptio/version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'axeptio_disable_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'axeptio_disable_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'axeptio_disable_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'axeptio_disable_notice' ) );

