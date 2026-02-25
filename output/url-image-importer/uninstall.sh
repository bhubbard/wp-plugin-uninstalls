#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uimptr_file_scan'
wp option delete 'tuxbfu_max_upload_size'
wp option delete 'tuxbfu_settings'
wp option delete 'tuxbfu_file_scan'
wp option delete 'ms_files_rewriting'

# Clear Cron Jobs
wp cron event delete 'uimptr_cleanup_temp_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'uimptr_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'uimptr_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'uimptr_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'uimptr_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uimptr_notice_big_file_form_uploads_promo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uimptr_notice_big_file_form_uploads_promo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uimptr_notice_big_file_form_uploads_promo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uimptr_notice_big_file_form_uploads_promo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfu_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfu_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfu_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfu_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfu_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfu_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfu_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfu_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfu_subscribe_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfu_subscribe_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfu_subscribe_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfu_subscribe_notice_dismissed'"
