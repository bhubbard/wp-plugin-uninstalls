<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('efp_run_days');
delete_site_option('efp_run_days');
delete_option('efp_run_after_time');
delete_site_option('efp_run_after_time');
delete_option('efp_run_after_ms');
delete_site_option('efp_run_after_ms');
delete_option('efp_run_after_scrolling');
delete_site_option('efp_run_after_scrolling');
delete_option('efp_run_after_scroll_percent');
delete_site_option('efp_run_after_scroll_percent');
delete_option('efp_modal_header');
delete_site_option('efp_modal_header');
delete_option('efp_modal_content');
delete_site_option('efp_modal_content');
delete_option('efp_modal_facebook_link');
delete_site_option('efp_modal_facebook_link');
delete_option('efp_modal_twitter_link');
delete_site_option('efp_modal_twitter_link');
delete_option('efp_modal_instagram_link');
delete_site_option('efp_modal_instagram_link');
delete_option('efp_modal_linkedin_link');
delete_site_option('efp_modal_linkedin_link');
delete_option('efp_modal_youtube_link');
delete_site_option('efp_modal_youtube_link');
delete_option('efp_modal_snapchat_link');
delete_site_option('efp_modal_snapchat_link');
delete_option('efp_modal_footer');
delete_site_option('efp_modal_footer');

