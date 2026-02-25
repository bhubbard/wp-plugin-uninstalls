<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_civi_wpms_memberships_offset');
delete_site_option('_civi_wpms_memberships_offset');
delete_option('civi_wp_member_sync_settings');
delete_site_option('civi_wp_member_sync_settings');
delete_option('civi_wp_member_sync_version');
delete_site_option('civi_wp_member_sync_version');
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('tadms_db_version');
delete_site_option('tadms_db_version');
delete_option('civi_member_sync_db_version');
delete_site_option('civi_member_sync_db_version');
delete_option('civi_member_sync_settings');
delete_site_option('civi_member_sync_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('civi_wp_member_sync_refresh');
wp_clear_scheduled_hook('civi_member_sync_refresh');

