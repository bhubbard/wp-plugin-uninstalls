<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contactsync_cron_processing');
delete_site_option('contactsync_cron_processing');
delete_option('contactsync_access_token');
delete_site_option('contactsync_access_token');
delete_option('contactsync_refresh_token');
delete_site_option('contactsync_refresh_token');
delete_option('contactsync_token_expires_in');
delete_site_option('contactsync_token_expires_in');
delete_option('contactsync_user_email');
delete_site_option('contactsync_user_email');
delete_option('contactsync_user_display_name');
delete_site_option('contactsync_user_display_name');
delete_option('contactsync_current_batch_page');
delete_site_option('contactsync_current_batch_page');

// Delete Transients
delete_transient('contactsync_auth_notice');
delete_site_transient('contactsync_auth_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('contactsync_process_next_batch');

