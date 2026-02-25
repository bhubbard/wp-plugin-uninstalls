<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('youtube_height');
delete_site_option('youtube_height');
delete_option('youtube_width');
delete_site_option('youtube_width');
delete_option('autoplay');
delete_site_option('autoplay');

