<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dizzyjam_shop_unique_id');
delete_site_option('dizzyjam_shop_unique_id');
delete_option('dizzyjam_iso_country_code');
delete_site_option('dizzyjam_iso_country_code');
delete_option('dizzyjam_api_auth_id');
delete_site_option('dizzyjam_api_auth_id');
delete_option('dizzyjam_api_key');
delete_site_option('dizzyjam_api_key');
delete_option('dizzyjam_products_per_page');
delete_site_option('dizzyjam_products_per_page');
delete_option('dizzyjam_cache_time');
delete_site_option('dizzyjam_cache_time');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

