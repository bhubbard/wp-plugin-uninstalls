<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_comments_cookies_opt_in');
delete_site_option('show_comments_cookies_opt_in');
delete_option('_wp_privacy_text_change_check');
delete_site_option('_wp_privacy_text_change_check');
delete_option('_wp_suggested_policy_text_has_changed');
delete_site_option('_wp_suggested_policy_text_has_changed');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_privacy_delete_old_export_files');

