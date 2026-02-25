<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailercloud_api_key');
delete_site_option('mailercloud_api_key');
delete_option('mailercloud_Activated_Plugin');
delete_site_option('mailercloud_Activated_Plugin');
delete_option('mailercloud_selected_sync_list_id');
delete_site_option('mailercloud_selected_sync_list_id');
delete_option('mailercloud_selected_sync_list');
delete_site_option('mailercloud_selected_sync_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('mailercloud_cron_every_five_minutes');

