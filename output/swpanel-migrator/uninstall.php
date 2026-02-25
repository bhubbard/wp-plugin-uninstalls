<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swpanel_migrator_run_task');
delete_site_option('swpanel_migrator_run_task');
delete_option('swpanel_migrator_token');
delete_site_option('swpanel_migrator_token');
delete_option('swpanel_migrator_secret_key');
delete_site_option('swpanel_migrator_secret_key');
delete_option('swpanel_migrator_status');
delete_site_option('swpanel_migrator_status');
delete_option('swpanel_migrator_maintenance');
delete_site_option('swpanel_migrator_maintenance');
delete_option('swpanel_migrator_token_url');
delete_site_option('swpanel_migrator_token_url');
delete_option('swpanel_migrator_url');
delete_site_option('swpanel_migrator_url');
delete_option('swpanel_migrator_sql_uuid');
delete_site_option('swpanel_migrator_sql_uuid');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('swpanel_migrator_cleanup_hook');

