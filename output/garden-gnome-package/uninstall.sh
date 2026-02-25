#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ggsw_import_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ggsw_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ggsw_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ggsw_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ggsw_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ggsw_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ggsw_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ggsw_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ggsw_height'"
