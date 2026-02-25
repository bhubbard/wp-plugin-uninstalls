<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notification_blocker_active');
delete_site_option('notification_blocker_active');
delete_option('notification_blocker_ui_style');
delete_site_option('notification_blocker_ui_style');
delete_option('notification_blocker_hidden_notices');
delete_site_option('notification_blocker_hidden_notices');

