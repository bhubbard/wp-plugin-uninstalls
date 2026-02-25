<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mspsfw_disable_remote_updates');
delete_site_option('mspsfw_disable_remote_updates');
delete_option('mspsfw_remove_data_on_delete');
delete_site_option('mspsfw_remove_data_on_delete');
delete_option('mspsfw_sync_child_sites');
delete_site_option('mspsfw_sync_child_sites');
delete_option('mspsfw_sync_email_schedule');
delete_site_option('mspsfw_sync_email_schedule');
delete_option('mspsfw_sync_only_on_child');
delete_site_option('mspsfw_sync_only_on_child');
delete_option('mspsfw_sync_missing_from_child');
delete_site_option('mspsfw_sync_missing_from_child');
delete_option('mspsfw_sync_needing_price_update');
delete_site_option('mspsfw_sync_needing_price_update');
delete_option('mspsfw_sync_all_products');
delete_site_option('mspsfw_sync_all_products');
delete_option('mspsfw_sync_recipient_emails');
delete_site_option('mspsfw_sync_recipient_emails');
delete_option('mspsfw_sync_automated_sync');
delete_site_option('mspsfw_sync_automated_sync');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

