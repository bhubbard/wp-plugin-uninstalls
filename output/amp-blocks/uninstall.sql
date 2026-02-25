-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amp_blocks_editor_width', 'amp_blocks_config_blocks', 'amp_blocks_settings_blocks', 'amp_blocks_design_library');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'amp_blocks_editor_width');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'amp_blocks_editor_width');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'amp_blocks_editor_width');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'amp_blocks_editor_width');

