<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sm_youtube_subscribe_options');
delete_site_option('sm_youtube_subscribe_options');

