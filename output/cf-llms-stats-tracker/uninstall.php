<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llmssttr_retention_days');
delete_site_option('llmssttr_retention_days');
delete_option('llmssttr_cached_content');
delete_site_option('llmssttr_cached_content');
delete_option('llmssttr_last_updated');
delete_site_option('llmssttr_last_updated');
delete_option('llmssttr_owner_name');
delete_site_option('llmssttr_owner_name');
delete_option('llmssttr_owner_email');
delete_site_option('llmssttr_owner_email');
delete_option('llmssttr_owner_website');
delete_site_option('llmssttr_owner_website');
delete_option('llmssttr_policy_url');
delete_site_option('llmssttr_policy_url');
delete_option('llmssttr_include_post_types');
delete_site_option('llmssttr_include_post_types');

// Clear Cron Jobs
wp_clear_scheduled_hook('llmssttr_daily_cleanup');
wp_clear_scheduled_hook('llmssttr_refresh_cache');

