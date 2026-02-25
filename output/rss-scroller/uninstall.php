<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rss_scr_width');
delete_site_option('rss_scr_width');
delete_option('rss_scr_height');
delete_site_option('rss_scr_height');
delete_option('rss_scr_delay');
delete_site_option('rss_scr_delay');
delete_option('rss_scr_speed');
delete_site_option('rss_scr_speed');
delete_option('rss_scr_num');
delete_site_option('rss_scr_num');
delete_option('rss_scr_url');
delete_site_option('rss_scr_url');
delete_option('rss_scr_url2');
delete_site_option('rss_scr_url2');
delete_option('rss_scr_url3');
delete_site_option('rss_scr_url3');
delete_option('rss_scr_title');
delete_site_option('rss_scr_title');

