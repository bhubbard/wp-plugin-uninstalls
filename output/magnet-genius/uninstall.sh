#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lead_share_message'
wp option delete 'magnet_genius_api_key'
wp option delete 'magnet_genius_audience_key'
wp option delete 'magnet_genius_wemail_api_key'
wp option delete 'magnet_genius_whatsapp_api_key'
wp option delete 'magnet_genius_db_version'
wp option delete 'magnet_genius_plugin_version'

# Clear Cron Jobs
wp cron event delete 'lm_magnet_genius_cron'

