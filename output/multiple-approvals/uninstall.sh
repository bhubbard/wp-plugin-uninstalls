#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mait_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mait_approval_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mait_approval_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mait_approval_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mait_approval_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mait_approval_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mait_approval_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mait_approval_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mait_approval_user'"
