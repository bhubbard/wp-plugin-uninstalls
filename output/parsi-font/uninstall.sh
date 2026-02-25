#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dash_font_settings'
wp option delete 'site_font_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwfc_pro_version_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwfc_pro_version_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwfc_pro_version_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwfc_pro_version_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwfc_pro_version_2_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwfc_pro_version_2_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwfc_pro_version_2_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwfc_pro_version_2_dismissed'"
