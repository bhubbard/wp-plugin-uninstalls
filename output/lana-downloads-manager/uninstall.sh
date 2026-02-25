#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lana_downloads_manager_uploading_files_folder'
wp option delete 'lana_downloads_manager_endpoint'
wp option delete 'lana_downloads_manager_post_type_endpoint'
wp option delete 'lana_downloads_manager_category_endpoint'
wp option delete 'lana_downloads_manager_public'
wp option delete 'lana_downloads_manager_post_type'
wp option delete 'lana_downloads_manager_counter'
wp option delete 'lana_downloads_manager_endpoint_type'
wp option delete 'lana_downloads_manager_role_edit_lana_download_files'
wp option delete 'lana_downloads_manager_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lana_download_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lana_download_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lana_download_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lana_download_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lana_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lana_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lana_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lana_download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lana_download_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lana_download_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lana_download_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lana_download_file_id'"
