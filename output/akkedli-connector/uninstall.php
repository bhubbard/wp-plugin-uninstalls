<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('akkedli_api_key');
delete_site_option('akkedli_api_key');
delete_option('akkedli_webhook_url');
delete_site_option('akkedli_webhook_url');
delete_option('akkedli_api_key_validated');
delete_site_option('akkedli_api_key_validated');
delete_option('akkedli_connected_at');
delete_site_option('akkedli_connected_at');
delete_option('akkedli_store_domain');
delete_site_option('akkedli_store_domain');
delete_option('akkedli_send_pending');
delete_site_option('akkedli_send_pending');
delete_option('akkedli_send_processing');
delete_site_option('akkedli_send_processing');

