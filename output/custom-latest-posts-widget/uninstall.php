<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_lpw_posts_thumb_sizes');
delete_site_option('custom_lpw_posts_thumb_sizes');

