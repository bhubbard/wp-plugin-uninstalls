<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwlscf_save_continue_expiry_days');
delete_site_option('dwlscf_save_continue_expiry_days');
delete_option('dwlscf_draft_cleanup_count');
delete_site_option('dwlscf_draft_cleanup_count');
delete_option('dwlscf_last_cleanup_time');
delete_site_option('dwlscf_last_cleanup_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('dwlscf_cleanup_expired_drafts');

