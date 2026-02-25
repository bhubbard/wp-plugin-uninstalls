<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('1y');
delete_site_option('1y');
delete_option('3y');
delete_site_option('3y');
delete_option('5y');
delete_site_option('5y');
delete_option('expense_ratio');
delete_site_option('expense_ratio');
delete_option('portfolio_turnover');
delete_site_option('portfolio_turnover');
delete_option('category');
delete_site_option('category');
delete_option('sub_category');
delete_site_option('sub_category');
delete_option('risk');
delete_site_option('risk');
delete_option('is_first_time');
delete_site_option('is_first_time');

