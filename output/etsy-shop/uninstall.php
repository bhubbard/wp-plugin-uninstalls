<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etsy_shop_version');
delete_site_option('etsy_shop_version');
delete_option('etsy_shop_timeout');
delete_site_option('etsy_shop_timeout');
delete_option('etsy_shop_cache_life');
delete_site_option('etsy_shop_cache_life');
delete_option('etsy_shop_debug_mode');
delete_site_option('etsy_shop_debug_mode');
delete_option('etsy_shop_target_blank');
delete_site_option('etsy_shop_target_blank');
delete_option('etsy_shop_api_key');
delete_site_option('etsy_shop_api_key');
delete_option('etsy_shop_quickstart_shop_id');
delete_site_option('etsy_shop_quickstart_shop_id');

