<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myyt_username');
delete_site_option('myyt_username');
delete_option('myyt_display_many');
delete_site_option('myyt_display_many');
delete_option('myyt_enable_hd');
delete_site_option('myyt_enable_hd');
delete_option('myyt_display_thumb');
delete_site_option('myyt_display_thumb');
delete_option('myyt_display_dateadded');
delete_site_option('myyt_display_dateadded');
delete_option('myyt_orderby');
delete_site_option('myyt_orderby');

