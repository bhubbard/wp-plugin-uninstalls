#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_msps_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_msps_notified_%' OR option_name LIKE '_site_transient_msps_notified_%'"
wp transient delete 'msps_notifications'
wp transient delete 'ayudawp_msps_activation_notice'

# Clear Cron Jobs
wp cron event delete 'ayudawp_msps_check_scheduled_sales'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msps_scheduled_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msps_scheduled_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msps_scheduled_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msps_scheduled_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msps_overlap_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msps_overlap_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msps_overlap_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msps_overlap_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'msps_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'msps_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'msps_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'msps_dismissed_%'"
