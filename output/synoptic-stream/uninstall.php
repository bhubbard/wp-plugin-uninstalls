<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('synoptic_stream_api_key');
delete_site_option('synoptic_stream_api_key');
delete_option('synoptic_stream_api_key_error');
delete_site_option('synoptic_stream_api_key_error');
delete_option('synoptic_stream_stream_id');
delete_site_option('synoptic_stream_stream_id');
delete_option('synoptic_stream_post_types');
delete_site_option('synoptic_stream_post_types');
delete_option('synoptic_stream_activity_log');
delete_site_option('synoptic_stream_activity_log');

