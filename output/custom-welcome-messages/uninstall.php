<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwl_login_message_id');
delete_site_option('jwl_login_message_id');
delete_option('jwl_logout_message_id');
delete_site_option('jwl_logout_message_id');
delete_option('jwl_login_css_id');
delete_site_option('jwl_login_css_id');
delete_option('jwl_logout_css_id');
delete_site_option('jwl_logout_css_id');
delete_option('jwl_logo_id');
delete_site_option('jwl_logo_id');
delete_option('jwl_headerurl_id');
delete_site_option('jwl_headerurl_id');
delete_option('jwl_headertitle_id');
delete_site_option('jwl_headertitle_id');
delete_option('jwl_enable1_id');
delete_site_option('jwl_enable1_id');
delete_option('jwl_enable3_id');
delete_site_option('jwl_enable3_id');
delete_option('jwl_enable6_id');
delete_site_option('jwl_enable6_id');
delete_option('jwl_enable7_id');
delete_site_option('jwl_enable7_id');
delete_option('jwl_enable8_id');
delete_site_option('jwl_enable8_id');

