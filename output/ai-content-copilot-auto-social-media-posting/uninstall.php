<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiccfb_facebook_settings');
delete_site_option('aiccfb_facebook_settings');
delete_option('ai_content_facebook_settings');
delete_site_option('ai_content_facebook_settings');
delete_option('facebook_page_id');
delete_site_option('facebook_page_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_content_facebook_generate_and_post');

