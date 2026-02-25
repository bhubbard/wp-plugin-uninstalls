#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'radardsa_options'
wp option delete 'radardsa_latest_version'

# Clear Cron Jobs
wp cron event delete 'radar_dsa_check_framework_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_radar_dsa_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_radar_dsa_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_radar_dsa_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_radar_dsa_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_radar_dsa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_radar_dsa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_radar_dsa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_radar_dsa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_radar_dsa_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_radar_dsa_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_radar_dsa_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_radar_dsa_date'"
