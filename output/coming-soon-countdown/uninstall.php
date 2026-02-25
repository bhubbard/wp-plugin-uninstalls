<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nick_ls_aboutus');
delete_site_option('nick_ls_aboutus');
delete_option('nick_ls_aboutus1');
delete_site_option('nick_ls_aboutus1');
delete_option('nick_ls_contact');
delete_site_option('nick_ls_contact');
delete_option('nick_ls_countdown');
delete_site_option('nick_ls_countdown');
delete_option('nick_ls_dashboard');
delete_site_option('nick_ls_dashboard');
delete_option('nick_ls_design');
delete_site_option('nick_ls_design');
delete_option('nick_ls_seo');
delete_site_option('nick_ls_seo');

