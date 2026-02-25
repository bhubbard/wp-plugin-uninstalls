<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aff_def_ref_calc_key');
delete_site_option('aff_def_ref_calc_key');
delete_option('aff_def_ref_calc_value');
delete_site_option('aff_def_ref_calc_value');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

