<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('xyz_ips_installed_date');
delete_site_option('xyz_ips_installed_date');
delete_option('xyz_ips_dnt_shw_notice');
delete_site_option('xyz_ips_dnt_shw_notice');
delete_option('xyz_ips_premium_version_ads');
delete_site_option('xyz_ips_premium_version_ads');
delete_option('xyz_ips_credit_dismiss');
delete_site_option('xyz_ips_credit_dismiss');
delete_option('xyz_ips_sort_order');
delete_site_option('xyz_ips_sort_order');
delete_option('xyz_ips_sort_field_name');
delete_site_option('xyz_ips_sort_field_name');
delete_option('xyz_ips_auto_insert');
delete_site_option('xyz_ips_auto_insert');
delete_option('xyz_ips_auto_exception');
delete_site_option('xyz_ips_auto_exception');
delete_option('xyz_ips_limit');
delete_site_option('xyz_ips_limit');
delete_option('xyz_ips_exception_email');
delete_site_option('xyz_ips_exception_email');
delete_option('xyz_ips_exec_in_editor');
delete_site_option('xyz_ips_exec_in_editor');
delete_option('xyz_ips_free_version');
delete_site_option('xyz_ips_free_version');

