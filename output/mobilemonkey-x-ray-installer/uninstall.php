<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xray_script');
delete_site_option('xray_script');
delete_option('xray_enabled');
delete_site_option('xray_enabled');

