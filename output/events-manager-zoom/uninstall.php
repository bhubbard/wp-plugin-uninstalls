<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_zoom_version');
delete_site_option('dbem_zoom_version');
delete_option('dbem_location_types');
delete_site_option('dbem_location_types');
delete_option('dbem_edit_events_page');
delete_site_option('dbem_edit_events_page');
delete_option('emp_gateway_customer_fields');
delete_site_option('emp_gateway_customer_fields');
delete_option('em_check_dev_version');
delete_site_option('em_check_dev_version');
delete_option('dbem_pro_dev_updates');
delete_site_option('dbem_pro_dev_updates');

