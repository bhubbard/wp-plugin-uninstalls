<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcapt_clone_post_types');
delete_site_option('wcapt_clone_post_types');
delete_option('wp_any_posts_clone_notice');
delete_site_option('wp_any_posts_clone_notice');

