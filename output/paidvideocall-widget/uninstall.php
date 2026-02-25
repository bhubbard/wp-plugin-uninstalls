<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_pvcw_widget_api_key');
delete_site_option('_pvcw_widget_api_key');
delete_option('_pvcw_widget_url');
delete_site_option('_pvcw_widget_url');
delete_option('_pvcw_widget_page');
delete_site_option('_pvcw_widget_page');
delete_option('pvcw_widget_api_key');
delete_site_option('pvcw_widget_api_key');

