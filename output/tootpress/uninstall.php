<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tootpress_mastodon_amount_of_requests');
delete_site_option('tootpress_mastodon_amount_of_requests');
delete_option('tootpress_cron_period');
delete_site_option('tootpress_cron_period');
delete_option('tootpress_cron_newtoots_status');
delete_site_option('tootpress_cron_newtoots_status');
delete_option('tootpress_cron_alltoots_status');
delete_site_option('tootpress_cron_alltoots_status');
delete_option('mathilda_database_version');
delete_site_option('mathilda_database_version');
delete_option('tootpress_latest_toot');
delete_site_option('tootpress_latest_toot');
delete_option('tootpress_oldest_toot');
delete_site_option('tootpress_oldest_toot');
delete_option('tootpress_last_insert');
delete_site_option('tootpress_last_insert');
delete_option('tootpress_timeline_complete');
delete_site_option('tootpress_timeline_complete');
delete_option('tootpress_plugin_version');
delete_site_option('tootpress_plugin_version');
delete_option('tootpress_database_version');
delete_site_option('tootpress_database_version');
delete_option('tootpress_active');
delete_site_option('tootpress_active');
delete_option('tootpress_mastodon_instance');
delete_site_option('tootpress_mastodon_instance');
delete_option('tootpress_mastodon_oauth_access_token');
delete_site_option('tootpress_mastodon_oauth_access_token');
delete_option('tootpress_mastodon_account_id');
delete_site_option('tootpress_mastodon_account_id');
delete_option('tootpress_mastodon_account_name');
delete_site_option('tootpress_mastodon_account_name');
delete_option('tootpress_page_id');
delete_site_option('tootpress_page_id');
delete_option('tootpress_amount_toots_page');
delete_site_option('tootpress_amount_toots_page');
delete_option('tootpress_navigation');
delete_site_option('tootpress_navigation');
delete_option('tootpress_css');
delete_site_option('tootpress_css');
delete_option('tootpress_backlink');
delete_site_option('tootpress_backlink');
delete_option('tootpress_rewrite_update');
delete_site_option('tootpress_rewrite_update');
delete_option('tootpress_developer');
delete_site_option('tootpress_developer');

// Clear Cron Jobs
wp_clear_scheduled_hook('tootpress_cron_hook_newtoots');
wp_clear_scheduled_hook('tootpress_cron_hook_alltoots');

