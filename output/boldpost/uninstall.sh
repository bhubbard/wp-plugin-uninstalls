#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'boldpo_block_%'"
wp option delete 'boldpo_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_featured'"
