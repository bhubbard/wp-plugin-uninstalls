<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailniaga_balance');
delete_site_option('mailniaga_balance');
delete_option('mailniaga_wp_connector_settings');
delete_site_option('mailniaga_wp_connector_settings');

// Delete Transients
delete_transient('mailniaga_test_email_result');
delete_site_transient('mailniaga_test_email_result');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('mailniaga_check_balance_hook');
wp_clear_scheduled_hook('mailniaga_clean_email_logs');
wp_clear_scheduled_hook('mailniaga_unsubscribe_cron');

