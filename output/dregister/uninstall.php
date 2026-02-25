<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dr_fields');
delete_site_option('dr_fields');
delete_option('dr_force_first_name');
delete_site_option('dr_force_first_name');
delete_option('dr_force_last_name');
delete_site_option('dr_force_last_name');

