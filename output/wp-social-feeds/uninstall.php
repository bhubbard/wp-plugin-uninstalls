<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfwp_feed_youtube_application_credentials');
delete_site_option('sfwp_feed_youtube_application_credentials');
delete_option('sfwp_feed_youtube_application_option_setting');
delete_site_option('sfwp_feed_youtube_application_option_setting');

