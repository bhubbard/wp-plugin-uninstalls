#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ttw_manager_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy_thumb_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy_thumb_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy_thumb_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy_thumb_id'"
