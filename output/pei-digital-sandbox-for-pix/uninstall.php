<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pei_pix_api_key');
delete_site_option('pei_pix_api_key');
delete_option('pei_pix_secret');
delete_site_option('pei_pix_secret');
delete_option('pei_pix_currency');
delete_site_option('pei_pix_currency');
delete_option('pei_pix_gateway_option');
delete_site_option('pei_pix_gateway_option');
delete_option('pei_pix_logs');
delete_site_option('pei_pix_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('pei_pix_auto_approve');

