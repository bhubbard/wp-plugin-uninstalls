<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bindusms_installed');
delete_site_option('bindusms_installed');
delete_option('bindusms_version');
delete_site_option('bindusms_version');
delete_option('bindusms_wc_order_notification_settings');
delete_site_option('bindusms_wc_order_notification_settings');

