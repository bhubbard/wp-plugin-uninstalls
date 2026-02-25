#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'docspress_settings'
wp option delete 'docspress_setup'
wp option delete 'docspress_current_slug'
wp option delete 'docspress_updated_caps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'positive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'negative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nav_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nav_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nav_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nav_title'"
