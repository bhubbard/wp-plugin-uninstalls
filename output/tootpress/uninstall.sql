-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tootpress_mastodon_amount_of_requests', 'tootpress_cron_period', 'tootpress_cron_newtoots_status', 'tootpress_cron_alltoots_status', 'mathilda_database_version', 'tootpress_latest_toot', 'tootpress_oldest_toot', 'tootpress_last_insert', 'tootpress_timeline_complete', 'tootpress_plugin_version', 'tootpress_database_version', 'tootpress_active', 'tootpress_mastodon_instance', 'tootpress_mastodon_oauth_access_token', 'tootpress_mastodon_account_id', 'tootpress_mastodon_account_name', 'tootpress_page_id', 'tootpress_amount_toots_page', 'tootpress_navigation', 'tootpress_css', 'tootpress_backlink', 'tootpress_rewrite_update', 'tootpress_developer');

