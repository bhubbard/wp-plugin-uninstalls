#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qr_folder_logo_url'
wp option delete 'qr_folder_handout_message'
wp option delete 'qr_folder_gallery_url'
wp option delete 'qr_folder_drive_root_url'
wp option delete 'qr_folder_drive_api_key'
wp option delete 'qr_folder_footer_text'
wp option delete 'qr_folder_last_drive_cleanup'
wp option delete 'qr_folder_last_drive_cleanup_time'
wp option delete 'qr_folder_needs_flush'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_folder_drive_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_folder_drive_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_folder_drive_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_folder_drive_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qrfolders_lite_drive_file_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qrfolders_lite_drive_file_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qrfolders_lite_drive_file_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qrfolders_lite_drive_file_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qrfolders_lite_drive_file_count_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qrfolders_lite_drive_file_count_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qrfolders_lite_drive_file_count_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qrfolders_lite_drive_file_count_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_folder_drive_missing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_folder_drive_missing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_folder_drive_missing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_folder_drive_missing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_folder_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_folder_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_folder_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_folder_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_folder_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_folder_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_folder_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_folder_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qrfolders_lite_qr_target_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qrfolders_lite_qr_target_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qrfolders_lite_qr_target_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qrfolders_lite_qr_target_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qrfolders_lite_qr_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qrfolders_lite_qr_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qrfolders_lite_qr_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qrfolders_lite_qr_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qrfolders_lite_qr_upgraded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qrfolders_lite_qr_upgraded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qrfolders_lite_qr_upgraded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qrfolders_lite_qr_upgraded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_folder_retired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_folder_retired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_folder_retired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_folder_retired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qrfolders_lite_qr_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qrfolders_lite_qr_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qrfolders_lite_qr_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qrfolders_lite_qr_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qrfolders_lite_qr_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qrfolders_lite_qr_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qrfolders_lite_qr_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qrfolders_lite_qr_token'"
