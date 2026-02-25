#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image-map-pro-fragmented-saves'
wp option delete 'bea_media_analytics_index'
wp option delete 'dnh_dismissed_notices'

# Delete Transients
wp transient delete 'bea_media_analytics_activated_notice'

# Clear Cron Jobs
wp cron event delete 'bea.media_analytics.cron.force_indexation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dnh_dismissed_notices'"
