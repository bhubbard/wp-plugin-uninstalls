-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_attachment_url', 'image_attachment_id', 'download_content', 'download_button_text', 'download_button_classes', 'always_require_form', 'show_download_for_admin', 'open_in_new_tab', 'enable_gated_content', 'include_default_css', 'use_relative_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_attachment_url', 'image_attachment_id', 'download_content', 'download_button_text', 'download_button_classes', 'always_require_form', 'show_download_for_admin', 'open_in_new_tab', 'enable_gated_content', 'include_default_css', 'use_relative_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_attachment_url', 'image_attachment_id', 'download_content', 'download_button_text', 'download_button_classes', 'always_require_form', 'show_download_for_admin', 'open_in_new_tab', 'enable_gated_content', 'include_default_css', 'use_relative_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_attachment_url', 'image_attachment_id', 'download_content', 'download_button_text', 'download_button_classes', 'always_require_form', 'show_download_for_admin', 'open_in_new_tab', 'enable_gated_content', 'include_default_css', 'use_relative_url');

