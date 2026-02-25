#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gallery_for_immich_settings'

# Clear Cron Jobs
wp cron event delete 'gallery_for_immich_cleanup_shared_link'

