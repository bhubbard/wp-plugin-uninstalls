#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete '_rediscache_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'rediscache_discard_metrics'
wp cron event delete 'redis_gather_metrics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roc_dismissed_pro_release_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roc_dismissed_pro_release_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roc_dismissed_pro_release_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roc_dismissed_pro_release_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roc_dismissed_wc_pro_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roc_dismissed_wc_pro_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roc_dismissed_wc_pro_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roc_dismissed_wc_pro_notice'"
