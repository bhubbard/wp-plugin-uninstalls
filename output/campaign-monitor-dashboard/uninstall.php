<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cm_api_option');
delete_site_option('cm_api_option');
delete_option('cm_list_id_option');
delete_site_option('cm_list_id_option');
delete_option('cm_dashboard_widget_option');
delete_site_option('cm_dashboard_widget_option');

