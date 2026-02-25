#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mlgm_general_settings'
wp option delete 'mlgm_style_settings'
wp option delete 'ydsts_general_settings'
wp option delete 'ydsgm_style_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlgm_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlgm_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlgm_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlgm_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yds_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yds_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yds_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yds_address'"
