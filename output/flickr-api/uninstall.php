<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flickr_api_key');
delete_site_option('flickr_api_key');
delete_option('flickr_display');
delete_site_option('flickr_display');
delete_option('flickr_galleria_theme');
delete_site_option('flickr_galleria_theme');
delete_option('flickr_machinetag');
delete_site_option('flickr_machinetag');
delete_option('flickr_username');
delete_site_option('flickr_username');
delete_option('flickr_api_secret');
delete_site_option('flickr_api_secret');
delete_option('flickr_api_cache_time');
delete_site_option('flickr_api_cache_time');
delete_option('flickr_nsid');
delete_site_option('flickr_nsid');

