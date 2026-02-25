<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pathao_access_token');
delete_site_option('pathao_access_token');
delete_option('pathao_refresh_token');
delete_site_option('pathao_refresh_token');
delete_option('woocommerce_pathao_settings');
delete_site_option('woocommerce_pathao_settings');
delete_option('pathao_sandbox_mode');
delete_site_option('pathao_sandbox_mode');
delete_option('pathao_client_id');
delete_site_option('pathao_client_id');
delete_option('pathao_client_secret');
delete_site_option('pathao_client_secret');
delete_option('pathao_installed');
delete_site_option('pathao_installed');
delete_option('pathao_version');
delete_site_option('pathao_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('pathao_refresh_token_cron');

