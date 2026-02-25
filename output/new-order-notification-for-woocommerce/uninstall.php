<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_new_order_id_for_notification');
delete_site_option('_new_order_id_for_notification');
delete_option('__new_order_option');
delete_site_option('__new_order_option');
delete_option('_order_id_for_new_order_notification');
delete_site_option('_order_id_for_new_order_notification');
delete_option('_non_v2_alert_options');
delete_site_option('_non_v2_alert_options');
delete_option('nonw_settings');
delete_site_option('nonw_settings');

