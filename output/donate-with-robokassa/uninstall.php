<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwr_merchant_pass_two');
delete_site_option('dwr_merchant_pass_two');
delete_option('dwr_result_url');
delete_site_option('dwr_result_url');
delete_option('dwr_result_url_method');
delete_site_option('dwr_result_url_method');
delete_option('dwr_merchant_login');
delete_site_option('dwr_merchant_login');
delete_option('dwr_merchant_pass_one');
delete_site_option('dwr_merchant_pass_one');
delete_option('dwr_default_donation_amount');
delete_site_option('dwr_default_donation_amount');
delete_option('dwr_operation_description');
delete_site_option('dwr_operation_description');
delete_option('dwr_force_delete_tables');
delete_site_option('dwr_force_delete_tables');

