<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awr_installed');
delete_site_option('awr_installed');
delete_option('awr_form_id');
delete_site_option('awr_form_id');
delete_option('awr_list_name');
delete_site_option('awr_list_name');
delete_option('awr_disabled');
delete_site_option('awr_disabled');
delete_option('awr_opt_in');
delete_site_option('awr_opt_in');
delete_option('awr_unit_name');
delete_site_option('awr_unit_name');

