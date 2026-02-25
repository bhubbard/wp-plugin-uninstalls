<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsmpa_tiktok_url');
delete_site_option('tsmpa_tiktok_url');
delete_option('tsmpa_instagram_url');
delete_site_option('tsmpa_instagram_url');
delete_option('tsmpa_youtube_url');
delete_site_option('tsmpa_youtube_url');

