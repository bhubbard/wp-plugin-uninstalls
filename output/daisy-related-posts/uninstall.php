<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daisyplugins_related_posts_options');
delete_site_option('daisyplugins_related_posts_options');

