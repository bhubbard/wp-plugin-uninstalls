<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notification-limit');
delete_site_option('notification-limit');
delete_option('notification-position');
delete_site_option('notification-position');
delete_option('notification-switch');
delete_site_option('notification-switch');
delete_option('notification-cookie-limit');
delete_site_option('notification-cookie-limit');
delete_option('time-interval');
delete_site_option('time-interval');
delete_option('powered-by-switch');
delete_site_option('powered-by-switch');
delete_option('notification-sound-switch');
delete_site_option('notification-sound-switch');

