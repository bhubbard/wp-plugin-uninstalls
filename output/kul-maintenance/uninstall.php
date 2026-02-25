<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kul_maintenance_options');
delete_site_option('kul_maintenance_options');
delete_option('kul_maintenance_slider_status');
delete_site_option('kul_maintenance_slider_status');
delete_option('kul_maintenance_status');
delete_site_option('kul_maintenance_status');

