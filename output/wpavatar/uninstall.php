<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpavatar_enable_cravatar');
delete_site_option('wpavatar_enable_cravatar');
delete_option('wpavatar_cdn_type');
delete_site_option('wpavatar_cdn_type');
delete_option('wpavatar_cravatar_route');
delete_site_option('wpavatar_cravatar_route');
delete_option('wpavatar_third_party_mirror');
delete_site_option('wpavatar_third_party_mirror');
delete_option('wpavatar_custom_cdn');
delete_site_option('wpavatar_custom_cdn');
delete_option('wpavatar_hash_method');
delete_site_option('wpavatar_hash_method');
delete_option('wpavatar_timeout');
delete_site_option('wpavatar_timeout');
delete_option('wpavatar_enable_cache');
delete_site_option('wpavatar_enable_cache');
delete_option('wpavatar_cache_path');
delete_site_option('wpavatar_cache_path');
delete_option('wpavatar_cache_expire');
delete_site_option('wpavatar_cache_expire');
delete_option('wpavatar_seo_alt');
delete_site_option('wpavatar_seo_alt');
delete_option('wpavatar_fallback_mode');
delete_site_option('wpavatar_fallback_mode');
delete_option('wpavatar_fallback_avatar');
delete_site_option('wpavatar_fallback_avatar');
delete_option('wpavatar_shortcode_size');
delete_site_option('wpavatar_shortcode_size');
delete_option('wpavatar_shortcode_class');
delete_site_option('wpavatar_shortcode_class');
delete_option('wpavatar_shortcode_shape');
delete_site_option('wpavatar_shortcode_shape');
delete_option('wpavatar_commenters_count');
delete_site_option('wpavatar_commenters_count');
delete_option('wpavatar_commenters_size');
delete_site_option('wpavatar_commenters_size');
delete_option('wpavatar_users_count');
delete_site_option('wpavatar_users_count');
delete_option('wpavatar_users_size');
delete_site_option('wpavatar_users_size');
delete_option('wpavatar_network_enabled');
delete_site_option('wpavatar_network_enabled');
delete_option('wpavatar_network_enforce');
delete_site_option('wpavatar_network_enforce');
delete_option('wpavatar_network_controlled_options');
delete_site_option('wpavatar_network_controlled_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpavatar_purge_cache');

