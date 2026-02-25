#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmp_kakao_app_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmp_kakao_app_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmp_kakao_app_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmp_kakao_app_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kakao_app_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kakao_app_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kakao_app_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kakao_app_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmp_kakao_app_user_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmp_kakao_app_user_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmp_kakao_app_user_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmp_kakao_app_user_hash'"
