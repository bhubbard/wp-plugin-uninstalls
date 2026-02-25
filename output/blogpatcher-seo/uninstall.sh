#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'blogpatcher_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wporg_meta_key'"
