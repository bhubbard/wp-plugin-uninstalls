<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('old_comment_cleaner_days_old');
delete_site_option('old_comment_cleaner_days_old');
delete_option('old_comment_cleaner_delete_email');
delete_site_option('old_comment_cleaner_delete_email');
delete_option('old_comment_cleaner_delete_name');
delete_site_option('old_comment_cleaner_delete_name');
delete_option('old_comment_cleaner_delete_url');
delete_site_option('old_comment_cleaner_delete_url');
delete_option('old_comment_cleaner_confirm_delete');
delete_site_option('old_comment_cleaner_confirm_delete');

// Delete Transients
delete_transient('old_comment_cleaner_delete_old_comments_now');
delete_site_transient('old_comment_cleaner_delete_old_comments_now');

// Clear Cron Jobs
wp_clear_scheduled_hook('old_comment_cleaner_delete_old_comments_now');
wp_clear_scheduled_hook('old_comment_cleaner_delete_old_comments');

