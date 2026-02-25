#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_btn_text_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_btn_text_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_btn_text_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_btn_text_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notice_file_link_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notice_file_link_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notice_file_link_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notice_file_link_'"
