#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default-classic-editor-replace'
wp option delete 'default-classic-editor-allow-users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default-classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default-classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default-classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default-classic-editor-remember'"
