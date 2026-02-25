<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myyt_username');
delete_site_option('myyt_username');
delete_option('myyt_hd');
delete_site_option('myyt_hd');
delete_option('myyt_width');
delete_site_option('myyt_width');
delete_option('myyt_height');
delete_site_option('myyt_height');
delete_option('myyt_display_many');
delete_site_option('myyt_display_many');
delete_option('myyt_display_thumb');
delete_site_option('myyt_display_thumb');
delete_option('myyt_display_dateadded');
delete_site_option('myyt_display_dateadded');
delete_option('myyt_enable_hd');
delete_site_option('myyt_enable_hd');
delete_option('myyt_orderby');
delete_site_option('myyt_orderby');
delete_option('Youtube_videos');
delete_site_option('Youtube_videos');

