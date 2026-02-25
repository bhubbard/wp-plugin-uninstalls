#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eam_enable_custom_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eam_enable_custom_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eam_enable_custom_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eam_enable_custom_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eam_allowed_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eam_allowed_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eam_allowed_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eam_allowed_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eam_allowed_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eam_allowed_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eam_allowed_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eam_allowed_users'"
