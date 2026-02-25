#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ultimate_popunder_version'
wp option delete '_ultimate_popunder_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popunder_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popunder_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popunder_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popunder_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popunder_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popunder_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popunder_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popunder_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popunder_post_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popunder_post_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popunder_post_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popunder_post_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popunder_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popunder_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popunder_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popunder_priority'"
