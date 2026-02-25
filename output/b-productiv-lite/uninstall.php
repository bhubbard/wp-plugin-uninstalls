<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hclpage');
delete_site_option('hclpage');
delete_option('error_msg_database_bproductiv_lite_version');
delete_site_option('error_msg_database_bproductiv_lite_version');
delete_option('tasks_database_bproductiv_lite_version');
delete_site_option('tasks_database_bproductiv_lite_version');
delete_option('calendar_database_bproductiv_lite_version');
delete_site_option('calendar_database_bproductiv_lite_version');
delete_option('user_info_database_bproductiv_lite_version');
delete_site_option('user_info_database_bproductiv_lite_version');
delete_option('bproductiv_delete_data');
delete_site_option('bproductiv_delete_data');
delete_option('bproductiv_time_zone');
delete_site_option('bproductiv_time_zone');
delete_option('bproductiv_date_format');
delete_site_option('bproductiv_date_format');
delete_option('bproductiv_super_admin');
delete_site_option('bproductiv_super_admin');
delete_option('bproductiv_default_email');
delete_site_option('bproductiv_default_email');

