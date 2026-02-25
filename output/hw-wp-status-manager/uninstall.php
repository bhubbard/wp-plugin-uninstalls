<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hw_wp_status_manager_ver');
delete_site_option('hw_wp_status_manager_ver');

