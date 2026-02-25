<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('key_snap_menu');
delete_site_option('key_snap_menu');
delete_option('key_snap_menumisc');
delete_site_option('key_snap_menumisc');
delete_option('key_snap_recent');
delete_site_option('key_snap_recent');
delete_option('key_snap_csscls1');
delete_site_option('key_snap_csscls1');
delete_option('key_snap_csscls2');
delete_site_option('key_snap_csscls2');
delete_option('key_snap_exclude');
delete_site_option('key_snap_exclude');
delete_option('key_snap_fancyurl');
delete_site_option('key_snap_fancyurl');
delete_option('key_snap_fancyurlname');
delete_site_option('key_snap_fancyurlname');
delete_option('key_snap_tab1');
delete_site_option('key_snap_tab1');
delete_option('key_snap_alphabet');
delete_site_option('key_snap_alphabet');

