<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ginvoice_sync_last_update');
delete_site_option('ginvoice_sync_last_update');
delete_option('ginvoice_db_version');
delete_site_option('ginvoice_db_version');
delete_option('ginvoice_sale_channel_id');
delete_site_option('ginvoice_sale_channel_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('ginvoice_auto_invoice');

