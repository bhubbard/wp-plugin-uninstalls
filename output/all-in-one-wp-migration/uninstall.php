<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_elementor_global_css');
delete_site_option('_elementor_global_css');
delete_option('_elementor_assets_data');
delete_site_option('_elementor_assets_data');
delete_option('elementor-custom-breakpoints-files');
delete_site_option('elementor-custom-breakpoints-files');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('fs_accounts');
delete_site_option('fs_accounts');
delete_option('fs_dbg_accounts');
delete_site_option('fs_dbg_accounts');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_api_cache');
delete_site_option('fs_api_cache');
delete_option('fs_dbg_api_cache');
delete_site_option('fs_dbg_api_cache');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('cron');
delete_site_option('cron');

