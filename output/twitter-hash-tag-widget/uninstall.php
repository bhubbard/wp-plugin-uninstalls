<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter_hash_tag_cache');
delete_site_option('twitter_hash_tag_cache');

