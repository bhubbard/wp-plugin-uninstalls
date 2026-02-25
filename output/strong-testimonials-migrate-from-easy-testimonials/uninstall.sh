#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmtst_plugin_missing_notice_hide'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmtst_old_et_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmtst_old_et_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmtst_old_et_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmtst_old_et_id'"
