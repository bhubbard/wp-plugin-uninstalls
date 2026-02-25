-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digsign_image_width', 'digsign_image_height', 'digsign_category_name', 'digsign_refresh_interval', 'digsign_slide_delay', 'digsign_enable_qrcodes', 'digsign_layout_type', 'dsp_category_name', 'digsign_header_content', 'digsign_right_panel_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata');

