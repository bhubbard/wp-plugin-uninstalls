<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blvnsl_css_inclde');
delete_site_option('blvnsl_css_inclde');
delete_option('blvnsl_css_newurl');
delete_site_option('blvnsl_css_newurl');
delete_option('blvnsl_js_inclde');
delete_site_option('blvnsl_js_inclde');
delete_option('blvnsl_js_newurl');
delete_site_option('blvnsl_js_newurl');
delete_option('blvnsl_facebookbtn_login');
delete_site_option('blvnsl_facebookbtn_login');
delete_option('blvnsl_googlebtn_login');
delete_site_option('blvnsl_googlebtn_login');
delete_option('blvnsl_twitterbtn_login');
delete_site_option('blvnsl_twitterbtn_login');
delete_option('blvnsl_facebookbtn_WP_Members');
delete_site_option('blvnsl_facebookbtn_WP_Members');
delete_option('blvnsl_googlebtn_WP_Members');
delete_site_option('blvnsl_googlebtn_WP_Members');
delete_option('blvnsl_twitterbtn_WP_Members');
delete_site_option('blvnsl_twitterbtn_WP_Members');
delete_option('blvnsl_jquery_loginpage');
delete_site_option('blvnsl_jquery_loginpage');
delete_option('blvnsl_jquery_WP_Members');
delete_site_option('blvnsl_jquery_WP_Members');

