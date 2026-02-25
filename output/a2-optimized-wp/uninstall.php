<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a2_cache_enabled');
delete_site_option('a2_cache_enabled');
delete_option('A2_Optimized_Plugin_recaptcha');
delete_site_option('A2_Optimized_Plugin_recaptcha');
delete_option('a2_block_xmlrpc');
delete_site_option('a2_block_xmlrpc');
delete_option('a2opt-pagespeed');
delete_site_option('a2opt-pagespeed');
delete_option('a2opt-benchmarks-hosting');
delete_site_option('a2opt-benchmarks-hosting');
delete_option('a2opt-benchmarks-frontend');
delete_site_option('a2opt-benchmarks-frontend');
delete_option('a2_sitedata_allow');
delete_site_option('a2_sitedata_allow');
delete_option('a2_optimized_memcached_server');
delete_site_option('a2_optimized_memcached_server');
delete_option('a2opt-cache');
delete_site_option('a2opt-cache');
delete_option('autoptimize_html');
delete_site_option('autoptimize_html');
delete_option('a2_optimized_objectcache_type');
delete_site_option('a2_optimized_objectcache_type');
delete_option('a2_optimized_redis_server');
delete_site_option('a2_optimized_redis_server');
delete_option('litespeed.conf.object-kind');
delete_site_option('litespeed.conf.object-kind');
delete_option('litespeed.conf.object-host');
delete_site_option('litespeed.conf.object-host');
delete_option('litespeed.conf.object-port');
delete_site_option('litespeed.conf.object-port');
delete_option('a2_optimized_memcached_invalid');
delete_site_option('a2_optimized_memcached_invalid');
delete_option('a2_db_optimizations');
delete_site_option('a2_db_optimizations');
delete_option('sm_options');
delete_site_option('sm_options');
delete_option('litespeed.conf.crawler-sitemap');
delete_site_option('litespeed.conf.crawler-sitemap');
delete_option('a2_optimized_wpconfig_cleanup');
delete_site_option('a2_optimized_wpconfig_cleanup');
delete_option('a2_litespeed_lock');
delete_site_option('a2_litespeed_lock');
delete_option('litespeed.conf.object');
delete_site_option('litespeed.conf.object');
delete_option('wpseh_l01gnhdlwp');
delete_site_option('wpseh_l01gnhdlwp');
delete_option('a2_object_cache_enabled');
delete_site_option('a2_object_cache_enabled');
delete_option('a2_wc_cart_fragments');
delete_site_option('a2_wc_cart_fragments');
delete_option('a2_updated_regenerate-salts');
delete_site_option('a2_updated_regenerate-salts');
delete_option('a2_optimized_deny_direct');
delete_site_option('a2_optimized_deny_direct');
delete_option('a2_optimized_lockdown');
delete_site_option('a2_optimized_lockdown');
delete_option('a2_optimized_nomods');
delete_site_option('a2_optimized_nomods');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('a2_last_benchmark_ver');
delete_site_option('a2_last_benchmark_ver');
delete_option('a2_sitedata_lastsent');
delete_site_option('a2_sitedata_lastsent');
delete_option('a2_opt_auth_token');
delete_site_option('a2_opt_auth_token');
delete_option('litespeed.conf.cache');
delete_site_option('litespeed.conf.cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('a2_execute_db_optimizations');
wp_clear_scheduled_hook('a2_execute_wpconfig_cleanup');
wp_clear_scheduled_hook('a2_sync_xmlsitemap_location');
wp_clear_scheduled_hook('a2_sitedata_report');
wp_clear_scheduled_hook('a2_sitedata_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );

