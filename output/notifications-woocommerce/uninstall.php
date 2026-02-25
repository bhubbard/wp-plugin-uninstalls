<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwn_wdm_token');
delete_site_option('dwn_wdm_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('dwn_process_whatsapp_queue');

