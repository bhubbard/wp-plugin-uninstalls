#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donoco_global_copy_protection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donoco_copy_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donoco_copy_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donoco_copy_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donoco_copy_protection'"
