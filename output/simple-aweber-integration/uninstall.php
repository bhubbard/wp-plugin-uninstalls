<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aweber_style');
delete_site_option('aweber_style');
delete_option('aweber_js');
delete_site_option('aweber_js');
delete_option('aweber_post');
delete_site_option('aweber_post');
delete_option('aweber_page');
delete_site_option('aweber_page');
delete_option('aweber_post_start');
delete_site_option('aweber_post_start');
delete_option('aweber_page_start');
delete_site_option('aweber_page_start');
delete_option('aweber_priority');
delete_site_option('aweber_priority');

