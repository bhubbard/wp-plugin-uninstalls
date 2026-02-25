<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cubicsofts_asa_api_base');
delete_site_option('cubicsofts_asa_api_base');
delete_option('cubicsofts_asa_api_key');
delete_site_option('cubicsofts_asa_api_key');
delete_option('cubicsofts_asa_secret_token');
delete_site_option('cubicsofts_asa_secret_token');
delete_option('cubicsofts_asa_email');
delete_site_option('cubicsofts_asa_email');
delete_option('cubicsofts_asa_password');
delete_site_option('cubicsofts_asa_password');

// Clear Cron Jobs
wp_clear_scheduled_hook('cubicsofts_asa_sync_cron');

