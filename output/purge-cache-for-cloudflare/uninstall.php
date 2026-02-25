<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('purge_cache_for_cloudflare_api_key');
delete_site_option('purge_cache_for_cloudflare_api_key');
delete_option('purge_cache_for_cloudflare_api_email_address');
delete_site_option('purge_cache_for_cloudflare_api_email_address');
delete_option('purge_cache_for_cloudflare_urls');
delete_site_option('purge_cache_for_cloudflare_urls');

// Delete Transients
delete_transient('purge_cache_for_cloudflare_zone_data');
delete_site_transient('purge_cache_for_cloudflare_zone_data');

