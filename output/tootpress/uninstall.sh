#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tootpress_mastodon_amount_of_requests'
wp option delete 'tootpress_cron_period'
wp option delete 'tootpress_cron_newtoots_status'
wp option delete 'tootpress_cron_alltoots_status'
wp option delete 'mathilda_database_version'
wp option delete 'tootpress_latest_toot'
wp option delete 'tootpress_oldest_toot'
wp option delete 'tootpress_last_insert'
wp option delete 'tootpress_timeline_complete'
wp option delete 'tootpress_plugin_version'
wp option delete 'tootpress_database_version'
wp option delete 'tootpress_active'
wp option delete 'tootpress_mastodon_instance'
wp option delete 'tootpress_mastodon_oauth_access_token'
wp option delete 'tootpress_mastodon_account_id'
wp option delete 'tootpress_mastodon_account_name'
wp option delete 'tootpress_page_id'
wp option delete 'tootpress_amount_toots_page'
wp option delete 'tootpress_navigation'
wp option delete 'tootpress_css'
wp option delete 'tootpress_backlink'
wp option delete 'tootpress_rewrite_update'
wp option delete 'tootpress_developer'

# Clear Cron Jobs
wp cron event delete 'tootpress_cron_hook_newtoots'
wp cron event delete 'tootpress_cron_hook_alltoots'

