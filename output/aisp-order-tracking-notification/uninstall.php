<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aisp_order-tracking-notification_cleanup_on_uninstall');
delete_site_option('aisp_order-tracking-notification_cleanup_on_uninstall');
delete_option('aisp_order-tracking-notification_api_key');
delete_site_option('aisp_order-tracking-notification_api_key');
delete_option('aisp_order-tracking-notification_pickup_methods');
delete_site_option('aisp_order-tracking-notification_pickup_methods');

