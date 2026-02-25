<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_login_notification_options');
delete_site_option('simple_login_notification_options');
delete_option('simple-login-notification-dismiss-notice');
delete_site_option('simple-login-notification-dismiss-notice');

