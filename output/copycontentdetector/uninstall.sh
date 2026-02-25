#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccd_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccd-result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccd-result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccd-result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccd-result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccd-ignoreids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccd-ignoreids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccd-ignoreids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccd-ignoreids'"
