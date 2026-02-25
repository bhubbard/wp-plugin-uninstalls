<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mt_posts_per_page');
delete_site_option('mt_posts_per_page');
delete_option('twiogle_make_no_follow');
delete_site_option('twiogle_make_no_follow');
delete_option('link_back_to_profile');
delete_site_option('link_back_to_profile');
delete_option('remove_hashtags');
delete_site_option('remove_hashtags');
delete_option('twiogle_commenter_db_version');
delete_site_option('twiogle_commenter_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('twiogle_find_and_post_comments');

