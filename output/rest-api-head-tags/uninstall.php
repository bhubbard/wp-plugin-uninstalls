<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frontity_headtags_cache_token');
delete_site_option('frontity_headtags_cache_token');
delete_option('frontity_headtags_settings');
delete_site_option('frontity_headtags_settings');

