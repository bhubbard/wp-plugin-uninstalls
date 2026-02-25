-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_download_btn_text_', '_notice_file_link_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_download_btn_text_', '_notice_file_link_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_download_btn_text_', '_notice_file_link_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_download_btn_text_', '_notice_file_link_');

