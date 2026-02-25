<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgytce_mode');
delete_site_option('jcorgytce_mode');
delete_option('jcorgytce_thumbnail_width');
delete_site_option('jcorgytce_thumbnail_width');
delete_option('jcorgytce_video_width');
delete_site_option('jcorgytce_video_width');
delete_option('jcorgytce_show_title');
delete_site_option('jcorgytce_show_title');
delete_option('jcorgytce_max_results');
delete_site_option('jcorgytce_max_results');
delete_option('jcorgytce_start_index');
delete_site_option('jcorgytce_start_index');
delete_option('jcorgytce_order_by');
delete_site_option('jcorgytce_order_by');
delete_option('jcorgytce_filter_by_keyword');
delete_site_option('jcorgytce_filter_by_keyword');
delete_option('jcorgytce_channel_name');
delete_site_option('jcorgytce_channel_name');
delete_option('jcorgytce_thumb_quality');
delete_site_option('jcorgytce_thumb_quality');
delete_option('jcorgytce_use');
delete_site_option('jcorgytce_use');
delete_option('jcorgytce_linkback');
delete_site_option('jcorgytce_linkback');
delete_option('jcorgytce_ytkey');
delete_site_option('jcorgytce_ytkey');
delete_option('jcorgytce_playlist');
delete_site_option('jcorgytce_playlist');
delete_option('jcorgytce_filter_by_videos');
delete_site_option('jcorgytce_filter_by_videos');
delete_option('jcorgytce_linkback_text');
delete_site_option('jcorgytce_linkback_text');

