-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb_general_settings', 'downloaded_font_files', 'sb_setup_done', 'sb_blocks', 'smart_blocks_first_activation', 'smart_blocks_dismissed_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smart_blocks_image_hash', 'smart_blocks_dismissed_notices', 'sb_editor_width', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smart_blocks_image_hash', 'smart_blocks_dismissed_notices', 'sb_editor_width', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smart_blocks_image_hash', 'smart_blocks_dismissed_notices', 'sb_editor_width', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smart_blocks_image_hash', 'smart_blocks_dismissed_notices', 'sb_editor_width', '_wp_page_template');

