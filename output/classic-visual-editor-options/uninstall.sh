#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cveo_dismiss_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cveo_dismiss_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cveo_dismiss_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cveo_dismiss_notice'"
