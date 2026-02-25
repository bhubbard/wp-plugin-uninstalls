#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialize_settings10'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socialize_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socialize_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socialize_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socialize_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socialize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socialize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socialize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socialize'"
