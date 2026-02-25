<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('iare_crm_connection_status');
delete_site_transient('iare_crm_connection_status');
delete_transient('iare_crm_campaigns');
delete_site_transient('iare_crm_campaigns');

// Clear Cron Jobs
wp_clear_scheduled_hook('iare_crm_sync_campaigns');
wp_clear_scheduled_hook('iare_crm_cleanup_logs');

