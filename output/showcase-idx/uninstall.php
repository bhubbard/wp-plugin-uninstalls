<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('showcaseidx_api_v2_host');
delete_site_option('showcaseidx_api_v2_host');
delete_option('showcaseidx_cdn_host');
delete_site_option('showcaseidx_cdn_host');
delete_option('showcaseidx_api_key');
delete_site_option('showcaseidx_api_key');
delete_option('showcaseidx_template');
delete_site_option('showcaseidx_template');
delete_option('showcaseidx_setup_step');
delete_site_option('showcaseidx_setup_step');
delete_option('showcaseidx_url_namespace');
delete_site_option('showcaseidx_url_namespace');
delete_option('showcaseidx_fake');
delete_site_option('showcaseidx_fake');
delete_option('showcaseidx_product_version');
delete_site_option('showcaseidx_product_version');
delete_option('showcaseidx_cache_version');
delete_site_option('showcaseidx_cache_version');
delete_option('showcaseidx_search_page');
delete_site_option('showcaseidx_search_page');
delete_option('showcaseidx_deprovision_install_id');
delete_site_option('showcaseidx_deprovision_install_id');
delete_option('showcaseidx_website_uuid');
delete_site_option('showcaseidx_website_uuid');
delete_option('showcaseidx_install_id');
delete_site_option('showcaseidx_install_id');
delete_option('showcaseidx_website_name');
delete_site_option('showcaseidx_website_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('showcaseidx_cachebust');
wp_clear_scheduled_hook('showcaseidx_activation');

