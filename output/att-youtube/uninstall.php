<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('att_youtube_title');
delete_site_option('att_youtube_title');
delete_option('att_youtube_content');
delete_site_option('att_youtube_content');

