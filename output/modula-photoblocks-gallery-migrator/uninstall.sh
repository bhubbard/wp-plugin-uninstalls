#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modula_importer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-images'"
