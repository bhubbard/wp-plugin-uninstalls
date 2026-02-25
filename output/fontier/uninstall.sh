#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'fontier_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fontier_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fontier_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fontier_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fontier_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font_preview_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font_preview_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font_preview_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font_preview_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font_repeater'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font_repeater'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font_repeater'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font_repeater'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_fontier_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_fontier_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_fontier_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_fontier_title'"
