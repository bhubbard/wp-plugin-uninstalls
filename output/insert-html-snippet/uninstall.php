<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('xyz_ihs_installed_date');
delete_site_option('xyz_ihs_installed_date');
delete_option('xyz_ihs_dnt_shw_notice');
delete_site_option('xyz_ihs_dnt_shw_notice');
delete_option('xyz_ihs_premium_version_ads');
delete_site_option('xyz_ihs_premium_version_ads');
delete_option('xyz_ihs_credit_dismiss');
delete_site_option('xyz_ihs_credit_dismiss');
delete_option('xyz_ihs_sort_order');
delete_site_option('xyz_ihs_sort_order');
delete_option('xyz_ihs_sort_field_name');
delete_site_option('xyz_ihs_sort_field_name');
delete_option('xyz_ihs_dismiss');
delete_site_option('xyz_ihs_dismiss');
delete_option('xyz_ihs_limit');
delete_site_option('xyz_ihs_limit');
delete_option('xyz_ihs_exec_in_editor');
delete_site_option('xyz_ihs_exec_in_editor');
delete_option('xyz_ihs_free_version');
delete_site_option('xyz_ihs_free_version');

