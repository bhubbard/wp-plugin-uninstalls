#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_site_transient_update_core'
wp option delete '_site_transient_update_themes'
wp option delete '_site_transient_update_plugins'
wp option delete '_site_transient_theme_roots'
wp option delete 'sct_cron_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sct_use_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_author'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_webhook_url'"
wp option delete 'sct_chatwork_api_token'
wp option delete 'sct_chatwork_room_id'
wp option delete 'sct_use_slack'
wp option delete 'sct_slack_webhook_url'
wp option delete 'sct_send_slack_author'
wp option delete 'sct_send_slack_update'
wp option delete 'sct_use_chatwork'
wp option delete 'sct_send_chatwork_author'
wp option delete 'sct_send_chatwork_update'
wp option delete 'sct_use_discord'
wp option delete 'sct_discord_webhook_url'
wp option delete 'sct_send_discord_author'
wp option delete 'sct_send_discord_update'

# Clear Cron Jobs
wp cron event delete 'sct_update_check'

