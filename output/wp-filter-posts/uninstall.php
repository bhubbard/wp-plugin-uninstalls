<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('xyz_wpf_installed_date');
delete_site_option('xyz_wpf_installed_date');
delete_option('xyz_wfp_dnt_shw_notice');
delete_site_option('xyz_wfp_dnt_shw_notice');
delete_option('xyz_wpf_page_size');
delete_site_option('xyz_wpf_page_size');
delete_option('xyz_wpf_credit_dismiss');
delete_site_option('xyz_wpf_credit_dismiss');
delete_option('xyz_wpf_free_version');
delete_site_option('xyz_wpf_free_version');

