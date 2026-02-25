<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dxw3_plugins_author');
delete_site_option('dxw3_plugins_author');
delete_option('all_utility_plugins');
delete_site_option('all_utility_plugins');
delete_option('dxw3_utility_plugins');
delete_site_option('dxw3_utility_plugins');

