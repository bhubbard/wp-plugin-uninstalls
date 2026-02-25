#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revostock_gallery_settings'
wp option delete 'revostock_gallery_cache'

# Clear Cron Jobs
wp cron event delete 'revostock_gallery_cron_hook'

