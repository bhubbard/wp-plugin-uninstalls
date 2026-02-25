<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('album_cover_finder_api_key');
delete_site_option('album_cover_finder_api_key');

