-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blockly_typography_controls_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_blockly_fonts_attr');
DELETE FROM wp_usermeta WHERE meta_key IN ('_blockly_fonts_attr');
DELETE FROM wp_termmeta WHERE meta_key IN ('_blockly_fonts_attr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_blockly_fonts_attr');

