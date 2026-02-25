<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ze_hxr_errors');
delete_site_option('ze_hxr_errors');
delete_option('site_name');
delete_site_option('site_name');
delete_option('ze_setting');
delete_site_option('ze_setting');

// Delete Transients
delete_transient('ze_error_alert');
delete_site_transient('ze_error_alert');

