<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpc_last_order_time');
delete_site_option('wpc_last_order_time');
delete_option('wpc_last_order_id');
delete_site_option('wpc_last_order_id');
delete_option('wpc_notification_settings');
delete_site_option('wpc_notification_settings');
delete_option('wpc_last_seen_order_id');
delete_site_option('wpc_last_seen_order_id');

