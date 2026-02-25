<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dss_title_array');
delete_site_option('dss_title_array');
delete_option('dss_type_array');
delete_site_option('dss_type_array');
delete_option('dss_switch_array');
delete_site_option('dss_switch_array');
delete_option('dss_sql_string_array');
delete_site_option('dss_sql_string_array');
delete_option('dss_debug');
delete_site_option('dss_debug');
delete_option('dss_roles_array');
delete_site_option('dss_roles_array');
delete_option('dss_store_deleted');
delete_site_option('dss_store_deleted');
delete_option('dss_width_default');
delete_site_option('dss_width_default');
delete_option('dss_height_default');
delete_site_option('dss_height_default');
delete_option('dss_notepad');
delete_site_option('dss_notepad');
delete_option('dss_number_of_sql_statements');
delete_site_option('dss_number_of_sql_statements');

