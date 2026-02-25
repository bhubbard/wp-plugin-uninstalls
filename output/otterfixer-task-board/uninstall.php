<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('of_tb_mode');
delete_site_option('of_tb_mode');
delete_option('of_tb_allow_assign');
delete_site_option('of_tb_allow_assign');
delete_option('of_tb_enable_notices');
delete_site_option('of_tb_enable_notices');
delete_option('of_tb_categories');
delete_site_option('of_tb_categories');
delete_option('of_tb_widget_limit');
delete_site_option('of_tb_widget_limit');
delete_option('of_tb_delete_data_on_uninstall');
delete_site_option('of_tb_delete_data_on_uninstall');
delete_option('of_tb_shared_tasks');
delete_site_option('of_tb_shared_tasks');
delete_option('of_tb_shared_templates');
delete_site_option('of_tb_shared_templates');
delete_option('of_tb_shared_log');
delete_site_option('of_tb_shared_log');

