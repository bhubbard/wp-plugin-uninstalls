<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zaki_push_notification_options');
delete_site_option('zaki_push_notification_options');
delete_option('zaki_push_notification_fistactivationcheck');
delete_site_option('zaki_push_notification_fistactivationcheck');

