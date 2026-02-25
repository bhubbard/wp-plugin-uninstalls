<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dig_breadcrumb_settings');
delete_site_option('dig_breadcrumb_settings');

