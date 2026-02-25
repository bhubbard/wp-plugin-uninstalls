#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_jwt_fs_otp_use_staus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_jwt_fs_otp_use_staus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_jwt_fs_otp_use_staus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_jwt_fs_otp_use_staus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_jwt_fs_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_jwt_fs_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_jwt_fs_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_jwt_fs_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_jwt_fs_otp_exp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_jwt_fs_otp_exp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_jwt_fs_otp_exp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_jwt_fs_otp_exp'"
