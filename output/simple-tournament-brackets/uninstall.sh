#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stb_options'
wp option delete 'simple_tournament_brackets_options'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stb_competitors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stb_competitors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stb_competitors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stb_competitors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stb_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stb_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stb_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stb_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stb_match_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stb_match_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stb_match_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stb_match_data'"
