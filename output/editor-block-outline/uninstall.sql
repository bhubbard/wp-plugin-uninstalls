-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_show_block_name', '_show_class_name', '_lock_block_outline', '_block_data_position', '_enable_block_outline_padding', '_enable_block_outline', '_block_outline_color', '_block_outline_style', '_block_outline_opacity', '_block_outline_padding');
DELETE FROM wp_usermeta WHERE meta_key IN ('_show_block_name', '_show_class_name', '_lock_block_outline', '_block_data_position', '_enable_block_outline_padding', '_enable_block_outline', '_block_outline_color', '_block_outline_style', '_block_outline_opacity', '_block_outline_padding');
DELETE FROM wp_termmeta WHERE meta_key IN ('_show_block_name', '_show_class_name', '_lock_block_outline', '_block_data_position', '_enable_block_outline_padding', '_enable_block_outline', '_block_outline_color', '_block_outline_style', '_block_outline_opacity', '_block_outline_padding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_show_block_name', '_show_class_name', '_lock_block_outline', '_block_data_position', '_enable_block_outline_padding', '_enable_block_outline', '_block_outline_color', '_block_outline_style', '_block_outline_opacity', '_block_outline_padding');

