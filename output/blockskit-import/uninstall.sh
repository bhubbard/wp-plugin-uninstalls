#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'blockskit_import_demo_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notice_dismissed'"
