<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('joost_min_posts_count');
delete_site_option('joost_min_posts_count');
delete_option('fewer_tags');
delete_site_option('fewer_tags');

