#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topup_plus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tup'"
