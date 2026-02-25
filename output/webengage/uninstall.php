<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webengage_widget_status');
delete_site_option('webengage_widget_status');
delete_option('webengage_license_code');
delete_site_option('webengage_license_code');
delete_option('webengage_redirect_on_first_activation');
delete_site_option('webengage_redirect_on_first_activation');

