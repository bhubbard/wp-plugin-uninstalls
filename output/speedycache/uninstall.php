<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedycache_deletion_roles');
delete_site_option('speedycache_deletion_roles');
delete_option('softaculous_plugin_update_notice');
delete_site_option('softaculous_plugin_update_notice');
delete_option('speedycache_options');
delete_site_option('speedycache_options');
delete_option('speedycache_object_cache');
delete_site_option('speedycache_object_cache');
delete_option('speedycache_cdn');
delete_site_option('speedycache_cdn');
delete_option('speedycache_bloat');
delete_site_option('speedycache_bloat');
delete_option('speedycache_pagespeed_test');
delete_site_option('speedycache_pagespeed_test');
delete_option('speedycache_exclude');
delete_site_option('speedycache_exclude');
delete_option('speedycache_img');
delete_site_option('speedycache_img');
delete_option('speedycache_html_size');
delete_site_option('speedycache_html_size');
delete_option('speedycache_assets_size');
delete_site_option('speedycache_assets_size');
delete_option('speedycache_version');
delete_site_option('speedycache_version');
delete_option('speedycache_delete_cache_logs');
delete_site_option('speedycache_delete_cache_logs');
delete_option('speedycache_ccss_logs');
delete_site_option('speedycache_ccss_logs');
delete_option('speedycache_license');
delete_site_option('speedycache_license');
delete_option('speedycache_pro_version');
delete_site_option('speedycache_pro_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('speedycache_preload_transient');
delete_site_transient('speedycache_preload_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('speedycache_purge_cache');
wp_clear_scheduled_hook('speedycache_preload');
wp_clear_scheduled_hook('speedycache_preload_split');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'speedycache_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'speedycache_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'speedycache_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'speedycache_post_meta' ) );

