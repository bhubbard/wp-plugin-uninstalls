#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'botjuggler-plugin-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inpost_head_script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inpost_head_script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inpost_head_script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inpost_head_script'"
