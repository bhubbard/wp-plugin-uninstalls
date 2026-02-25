<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notificationemails');
delete_site_option('notificationemails');
delete_option('approvednotification');
delete_site_option('approvednotification');
delete_option('declinednotification');
delete_site_option('declinednotification');

