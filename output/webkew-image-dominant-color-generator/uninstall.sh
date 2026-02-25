#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wkidcg_fallback_color_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wkidcg_dominant_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wkidcg_dominant_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wkidcg_dominant_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wkidcg_dominant_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wkidcg_colors_palette'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wkidcg_colors_palette'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wkidcg_colors_palette'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wkidcg_colors_palette'"
