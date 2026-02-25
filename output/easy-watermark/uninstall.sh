#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'easy-watermark-first-booted'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings-general'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings-image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings-text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete '_ew_preview_image_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ew_backup_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ew_backup_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ew_backup_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ew_backup_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ew_applied_watermarks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ew_applied_watermarks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ew_applied_watermarks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ew_applied_watermarks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ew_has_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ew_has_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ew_has_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ew_has_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ew_used_as_watermark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ew_used_as_watermark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ew_used_as_watermark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ew_used_as_watermark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ew_attachment_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ew_attachment_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ew_attachment_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ew_attachment_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ew_tmp_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ew_tmp_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ew_tmp_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ew_tmp_params'"
