#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'downloadio_active_extensions_list'
wp option delete 'downloadio_permalinks'
wp option delete 'downloadio_downloads_page'
wp option delete 'downloadio_my_downloads_page'
wp option delete 'downloadio_privacy_policy_page'
wp option delete 'downloadio_terms_and_conditions_page'
wp option delete 'downloadio_no_access_page'
wp option delete 'downloadio_flush_rewrite_rules_flag'
wp option delete 'downloadio_notice_session_assets_flag'
wp option delete 'downloadio_installed'
wp option delete 'downloadio_redirect_flag'
wp option delete 'downloadio_version'
wp option delete '_downloadio_settings'
wp option delete 'csf_demo_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_access_code_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_access_code_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_access_code_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_access_code_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_access_code_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_access_code_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_access_code_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_access_code_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_utility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_utility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_utility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_utility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_additional_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_additional_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_additional_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_additional_buttons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_additional_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_additional_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_additional_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_additional_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadio_download_additional_contents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadio_download_additional_contents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadio_download_additional_contents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadio_download_additional_contents'"
