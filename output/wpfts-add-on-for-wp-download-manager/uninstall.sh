#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpdm_file_browser_root'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_files'"
