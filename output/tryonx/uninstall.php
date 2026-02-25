<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tryonx_gemini_api_key');
delete_site_option('tryonx_gemini_api_key');
delete_option('tryonx_enabled_product_categories');
delete_site_option('tryonx_enabled_product_categories');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

