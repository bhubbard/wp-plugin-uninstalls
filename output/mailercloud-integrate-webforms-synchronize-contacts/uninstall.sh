#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailercloud_api_key'
wp option delete 'mailercloud_Activated_Plugin'
wp option delete 'mailercloud_selected_sync_list_id'
wp option delete 'mailercloud_selected_sync_list'

# Clear Cron Jobs
wp cron event delete 'mailercloud_cron_every_five_minutes'

