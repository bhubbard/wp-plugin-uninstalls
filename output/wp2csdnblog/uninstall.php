<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2csdnblog_title');
delete_site_option('wp2csdnblog_title');
delete_option('wp2csdnblog_user');
delete_site_option('wp2csdnblog_user');
delete_option('wp2csdnblog_password');
delete_site_option('wp2csdnblog_password');
delete_option('wp2csdnblog_url');
delete_site_option('wp2csdnblog_url');
delete_option('wp2sinablog_user');
delete_site_option('wp2sinablog_user');
delete_option('wp2sinablog_pass');
delete_site_option('wp2sinablog_pass');
delete_option('wp2neteaseblog_user');
delete_site_option('wp2neteaseblog_user');
delete_option('wp2neteaseblog_pass');
delete_site_option('wp2neteaseblog_pass');
delete_option('wp2csdnblog_issync');
delete_site_option('wp2csdnblog_issync');
delete_option('wp2csdnblog_isaddlink');
delete_site_option('wp2csdnblog_isaddlink');

