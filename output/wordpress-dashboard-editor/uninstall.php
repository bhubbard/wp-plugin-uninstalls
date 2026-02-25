<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard');
delete_site_option('dashboard');
delete_option('dashboard_use_options');
delete_site_option('dashboard_use_options');

