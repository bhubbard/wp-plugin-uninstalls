#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitch_status_client_id'
wp option delete 'twitch_status_client_secret'
wp option delete 'twitch_status_channels'
wp option delete 'twitch_status_channel'
wp option delete 'twitch_status_selector'
wp option delete 'twitch_status_token'
wp option delete 'twitch_status_token_type'
wp option delete 'twitch_status_token_expiration'

# Clear Cron Jobs
wp cron event delete 'twitch_status_cron_hook'

