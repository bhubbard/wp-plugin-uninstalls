<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Admin_custome_login_gcaptcha');
delete_site_option('Admin_custome_login_gcaptcha');
delete_option('Admin_custome_login_top');
delete_site_option('Admin_custome_login_top');
delete_option('Admin_custome_login_Slidshow');
delete_site_option('Admin_custome_login_Slidshow');
delete_option('Admin_custome_login_Social');
delete_site_option('Admin_custome_login_Social');
delete_option('Admin_custome_login_login');
delete_site_option('Admin_custome_login_login');
delete_option('Admin_custome_login_dashboard');
delete_site_option('Admin_custome_login_dashboard');
delete_option('Admin_custome_login_text');
delete_site_option('Admin_custome_login_text');
delete_option('Admin_custome_login_logo');
delete_site_option('Admin_custome_login_logo');
delete_option('Admin_custome_login_Version');
delete_site_option('Admin_custome_login_Version');
delete_option('plugin_erident_settings');
delete_site_option('plugin_erident_settings');

