<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cufgo_enable');
delete_site_option('cufgo_enable');
delete_option('cufgo_send_user_notification_email');
delete_site_option('cufgo_send_user_notification_email');
delete_option('cufgo_settings');
delete_site_option('cufgo_settings');

