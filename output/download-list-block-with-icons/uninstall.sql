-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etfw_transients', 'downloadlist_hide_file_sizes', 'downloadlist_hide_description', 'downloadlist_hide_icons', 'downloadlist_link_text', 'downloadlist_link_target', 'downloadlist_robots', 'downloadlist_iconset', 'downloadlist_link_no_forced_download', 'downloadlist_show_download_button', 'downloadlist_link_browser_target', 'downloadlist_download_button_browser_target_own', 'downloadlist_link_browser_target_own', 'downloadlist_show_file_dates', 'downloadlist_show_file_format_labels', 'wp_attachment_pages_enabled', 'downloadlistVersion', 'downloadlist_inheriting_count', 'downloadlist_inheriting_max', 'downloadlist_inheriting_running', 'downloadlist_inheriting_status');
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE 'dl-dismissed-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dl_title', 'dl_description', 'icon', 'file_type', 'unicode', 'width', 'font_size', 'font_weight', 'default', 'font', 'height', 'type', 'generic-downloadlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('dl_title', 'dl_description', 'icon', 'file_type', 'unicode', 'width', 'font_size', 'font_weight', 'default', 'font', 'height', 'type', 'generic-downloadlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('dl_title', 'dl_description', 'icon', 'file_type', 'unicode', 'width', 'font_size', 'font_weight', 'default', 'font', 'height', 'type', 'generic-downloadlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dl_title', 'dl_description', 'icon', 'file_type', 'unicode', 'width', 'font_size', 'font_weight', 'default', 'font', 'height', 'type', 'generic-downloadlist');

