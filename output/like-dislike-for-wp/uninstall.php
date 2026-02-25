<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('like_dislike_vote_tracking_enabled');
delete_site_option('like_dislike_vote_tracking_enabled');
delete_option('like_dislike_hide_dislike_btn');
delete_site_option('like_dislike_hide_dislike_btn');
delete_option('like_dislike_for_wp_db_version');
delete_site_option('like_dislike_for_wp_db_version');

