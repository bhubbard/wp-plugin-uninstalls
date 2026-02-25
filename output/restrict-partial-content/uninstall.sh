#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'open_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'open_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'open_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'open_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'open_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'open_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'open_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'open_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_message'"
