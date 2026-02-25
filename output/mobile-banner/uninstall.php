<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobilebanner_bgcolour');
delete_site_option('mobilebanner_bgcolour');
delete_option('mobilebanner_textcolour');
delete_site_option('mobilebanner_textcolour');
delete_option('mobilebanner_text');
delete_site_option('mobilebanner_text');
delete_option('mobilebanner_url');
delete_site_option('mobilebanner_url');
delete_option('mobilebanner_width');
delete_site_option('mobilebanner_width');
delete_option('mobilebanner_height');
delete_site_option('mobilebanner_height');
delete_option('mobilebanner_chkclose');
delete_site_option('mobilebanner_chkclose');
delete_option('mobilebanner_cookiedays');
delete_site_option('mobilebanner_cookiedays');
delete_option('mobilebanner_chknewtab');
delete_site_option('mobilebanner_chknewtab');
delete_option('mobilebanner_hiddenpages');
delete_site_option('mobilebanner_hiddenpages');

