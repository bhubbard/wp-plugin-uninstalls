<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwd_login_logo');
delete_site_option('cwd_login_logo');
delete_option('cwd_login_back');
delete_site_option('cwd_login_back');
delete_option('cwd_login_button');
delete_site_option('cwd_login_button');
delete_option('cwd_login_border');
delete_site_option('cwd_login_border');
delete_option('cwd_login_form_border');
delete_site_option('cwd_login_form_border');
delete_option('cwd_login_form_shadow');
delete_site_option('cwd_login_form_shadow');
delete_option('cwd_login_back_color');
delete_site_option('cwd_login_back_color');

