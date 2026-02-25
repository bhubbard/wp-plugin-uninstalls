<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epafw_settings');
delete_site_option('epafw_settings');
delete_option('epafw_run_bc_script_for_v1.1.0');
delete_site_option('epafw_run_bc_script_for_v1.1.0');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

