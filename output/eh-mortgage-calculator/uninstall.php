<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ehmc_show_summary');
delete_site_option('ehmc_show_summary');
delete_option('ehmc_show_table');
delete_site_option('ehmc_show_table');
delete_option('ehmc_show_chart');
delete_site_option('ehmc_show_chart');
delete_option('ehmc_default_amount');
delete_site_option('ehmc_default_amount');
delete_option('ehmc_default_interest');
delete_site_option('ehmc_default_interest');
delete_option('ehmc_default_years');
delete_site_option('ehmc_default_years');
delete_option('ehmc_label_amount');
delete_site_option('ehmc_label_amount');
delete_option('ehmc_label_interest');
delete_site_option('ehmc_label_interest');
delete_option('ehmc_label_years');
delete_site_option('ehmc_label_years');
delete_option('ehmc_label_button_calculate');
delete_site_option('ehmc_label_button_calculate');
delete_option('ehmc_label_button_reset');
delete_site_option('ehmc_label_button_reset');
delete_option('ehmc_delete_data_on_uninstall');
delete_site_option('ehmc_delete_data_on_uninstall');
delete_option('ehmc_primary_color');
delete_site_option('ehmc_primary_color');
delete_option('ehmc_button_color_calculate');
delete_site_option('ehmc_button_color_calculate');
delete_option('ehmc_button_color_reset');
delete_site_option('ehmc_button_color_reset');
delete_option('ehmc_table_header_color');
delete_site_option('ehmc_table_header_color');
delete_option('ehmc_border_radius');
delete_site_option('ehmc_border_radius');

