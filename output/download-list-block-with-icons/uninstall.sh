#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etfw_transients'
wp option delete 'downloadlist_hide_file_sizes'
wp option delete 'downloadlist_hide_description'
wp option delete 'downloadlist_hide_icons'
wp option delete 'downloadlist_link_text'
wp option delete 'downloadlist_link_target'
wp option delete 'downloadlist_robots'
wp option delete 'downloadlist_iconset'
wp option delete 'downloadlist_link_no_forced_download'
wp option delete 'downloadlist_show_download_button'
wp option delete 'downloadlist_link_browser_target'
wp option delete 'downloadlist_download_button_browser_target_own'
wp option delete 'downloadlist_link_browser_target_own'
wp option delete 'downloadlist_show_file_dates'
wp option delete 'downloadlist_show_file_format_labels'
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'downloadlistVersion'
wp option delete 'downloadlist_inheriting_count'
wp option delete 'downloadlist_inheriting_max'
wp option delete 'downloadlist_inheriting_running'
wp option delete 'downloadlist_inheriting_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dl-dismissed-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dl_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dl_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dl_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dl_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dl_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dl_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dl_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dl_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unicode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unicode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unicode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unicode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generic-downloadlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generic-downloadlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generic-downloadlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generic-downloadlist'"
