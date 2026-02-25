<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ucwp_plugin_browser_key');
delete_site_option('ucwp_plugin_browser_key');
delete_option('ucwp_plugin_webhook_oid');
delete_site_option('ucwp_plugin_webhook_oid');
delete_option('ucwp_plugin_basic_username');
delete_site_option('ucwp_plugin_basic_username');
delete_option('ucwp_plugin_basic_password');
delete_site_option('ucwp_plugin_basic_password');
delete_option('ucwp_plugin_merchant_id');
delete_site_option('ucwp_plugin_merchant_id');
delete_option('ucwp_plugin_random');
delete_site_option('ucwp_plugin_random');
delete_option('ucwp_plugin_access_token');
delete_site_option('ucwp_plugin_access_token');
delete_option('ucwp_plugin_refresh_token');
delete_site_option('ucwp_plugin_refresh_token');
delete_option('ucwp_disable_passive_branding');
delete_site_option('ucwp_disable_passive_branding');
delete_option('ucwp_enable_ultracart_analytics');
delete_site_option('ucwp_enable_ultracart_analytics');
delete_option('ucwp_enable_ultracart_analytics_recording');
delete_site_option('ucwp_enable_ultracart_analytics_recording');
delete_option('ucwp_secure_host_name');
delete_site_option('ucwp_secure_host_name');

