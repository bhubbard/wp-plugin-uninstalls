<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgitlab_cache_time');
delete_site_option('wpgitlab_cache_time');
delete_option('wpgitlab_url');
delete_site_option('wpgitlab_url');
delete_option('wpgitlab_api_key');
delete_site_option('wpgitlab_api_key');
delete_option('wpgitlab_clear_cache');
delete_site_option('wpgitlab_clear_cache');

