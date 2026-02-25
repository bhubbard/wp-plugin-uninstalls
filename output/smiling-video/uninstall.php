<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smiling_video_user');
delete_site_option('smiling_video_user');
delete_option('smiling_video_password');
delete_site_option('smiling_video_password');
delete_option('smiling_video_publishmode');
delete_site_option('smiling_video_publishmode');

