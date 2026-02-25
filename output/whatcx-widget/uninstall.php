<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whatcx_widget_app_key');
delete_site_option('whatcx_widget_app_key');
delete_option('whatcx_widget_api_key');
delete_site_option('whatcx_widget_api_key');
delete_option('whatcx_widget_active');
delete_site_option('whatcx_widget_active');

