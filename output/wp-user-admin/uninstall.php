<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpua_remove_on_uninstall');
delete_site_option('wpua_remove_on_uninstall');
delete_option('wpua_enable_notification');
delete_site_option('wpua_enable_notification');
delete_option('wpua_role_change_notification_text');
delete_site_option('wpua_role_change_notification_text');
delete_option('wpua_role_restore_notification_text');
delete_site_option('wpua_role_restore_notification_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpua_change_role_event');

