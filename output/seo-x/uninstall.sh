#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seox'
wp option delete 'seox-ihf'
wp option delete 'seox-dashboard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'csf_demo_mode'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seox_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seox_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seox_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seox_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seox_metabox_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seox_metabox_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seox_metabox_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seox_metabox_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
