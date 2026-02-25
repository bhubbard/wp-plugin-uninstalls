#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bleague_settings'
wp option delete 'bl_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
