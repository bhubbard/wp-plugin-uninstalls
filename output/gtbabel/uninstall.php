<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtbabel_url_settings');
delete_site_option('gtbabel_url_settings');
delete_option('gtbabel_plugin_version');
delete_site_option('gtbabel_plugin_version');
delete_option('gtbabel_license_key');
delete_site_option('gtbabel_license_key');

// Delete Transients
delete_transient('gtbabel_public_urls');
delete_site_transient('gtbabel_public_urls');
delete_transient('gtbabel_auto_grab_sitemap_cache');
delete_site_transient('gtbabel_auto_grab_sitemap_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gtbabel_alt_lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gtbabel_alt_lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gtbabel_alt_lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gtbabel_alt_lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gtbabel_prevent_lngs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gtbabel_prevent_lngs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gtbabel_prevent_lngs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gtbabel_prevent_lngs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gtbabel__email_notifications_discovered_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gtbabel__email_notifications_discovered_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gtbabel__email_notifications_discovered_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gtbabel__email_notifications_discovered_last_time' ) );

