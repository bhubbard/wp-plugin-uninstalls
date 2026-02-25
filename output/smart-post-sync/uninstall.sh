#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_post_sync_settings'
wp option delete 'smart_post_sync_attr_map'
wp option delete 'smart_post_sync_response'

# Clear Cron Jobs
wp cron event delete 'sps_sync_post_cron'

