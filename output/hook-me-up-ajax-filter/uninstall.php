<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmu_dashboard');
delete_site_option('hmu_dashboard');
delete_option('hmu_ajax_filter');
delete_site_option('hmu_ajax_filter');

