<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('briefnote_content');
delete_site_option('briefnote_content');
delete_option('briefnote_last_saved');
delete_site_option('briefnote_last_saved');
delete_option('briefnote_settings');
delete_site_option('briefnote_settings');
delete_option('briefnote_caps_version');
delete_site_option('briefnote_caps_version');
delete_option('briefnote_db_version');
delete_site_option('briefnote_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('briefnote_cleanup_audit_logs');

