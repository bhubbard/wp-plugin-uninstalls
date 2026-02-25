<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ziggeo_video');
delete_site_option('ziggeo_video');
delete_option('ziggeo_events');
delete_site_option('ziggeo_events');
delete_option('ziggeo_templates');
delete_site_option('ziggeo_templates');
delete_option('ziggeo_keys');
delete_site_option('ziggeo_keys');
delete_option('ziggeo_translations');
delete_site_option('ziggeo_translations');
delete_option('ziggeo_notifications');
delete_site_option('ziggeo_notifications');
delete_option('ziggeo_videos_count');
delete_site_option('ziggeo_videos_count');

