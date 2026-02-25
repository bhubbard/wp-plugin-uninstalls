#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_nfprct_rewrite_restricted_media_list'
wp option delete '_nfproot_plugins_settings'
wp option delete '_nfp_root_settings'
wp option delete '_nfp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsmd_is_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsmd_is_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsmd_is_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsmd_is_restricted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfprct_is_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfprct_is_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfprct_is_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfprct_is_restricted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%media_library_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%media_library_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%media_library_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%media_library_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfprct_allowed_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfprct_allowed_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfprct_allowed_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfprct_allowed_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsmd_allowed_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsmd_allowed_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsmd_allowed_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsmd_allowed_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
