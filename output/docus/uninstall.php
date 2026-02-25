<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apikey');
delete_site_option('apikey');
delete_option('play_list_id');
delete_site_option('play_list_id');
delete_option('video_limit');
delete_site_option('video_limit');
delete_option('page_layout_style');
delete_site_option('page_layout_style');

