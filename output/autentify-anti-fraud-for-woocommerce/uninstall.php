<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autentify_auto_order_check');
delete_site_option('autentify_auto_order_check');
delete_option('autentify_api_token');
delete_site_option('autentify_api_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_async_autentify_autenti_mail_check');

