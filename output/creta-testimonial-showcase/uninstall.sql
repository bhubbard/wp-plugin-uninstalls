-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cretats_show_activation_popup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cretats_designation', '_cretats_location', '_cretats_rating', '_cretats_info', '_cretats_sequence', '_cretats_image', '_cretats_sc_layout', '_cretats_sc_font', '_cretats_sc_color', '_cretats_sc_bg_color', '_cretats_sc_block_bg_color', '_cretats_sc_limit', '_cretats_sc_columns', '_cretats_sc_exclude', '_cretats_sc_header_font_size', '_cretats_sc_body_font_size', '_cretats_sc_result_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cretats_designation', '_cretats_location', '_cretats_rating', '_cretats_info', '_cretats_sequence', '_cretats_image', '_cretats_sc_layout', '_cretats_sc_font', '_cretats_sc_color', '_cretats_sc_bg_color', '_cretats_sc_block_bg_color', '_cretats_sc_limit', '_cretats_sc_columns', '_cretats_sc_exclude', '_cretats_sc_header_font_size', '_cretats_sc_body_font_size', '_cretats_sc_result_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cretats_designation', '_cretats_location', '_cretats_rating', '_cretats_info', '_cretats_sequence', '_cretats_image', '_cretats_sc_layout', '_cretats_sc_font', '_cretats_sc_color', '_cretats_sc_bg_color', '_cretats_sc_block_bg_color', '_cretats_sc_limit', '_cretats_sc_columns', '_cretats_sc_exclude', '_cretats_sc_header_font_size', '_cretats_sc_body_font_size', '_cretats_sc_result_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cretats_designation', '_cretats_location', '_cretats_rating', '_cretats_info', '_cretats_sequence', '_cretats_image', '_cretats_sc_layout', '_cretats_sc_font', '_cretats_sc_color', '_cretats_sc_bg_color', '_cretats_sc_block_bg_color', '_cretats_sc_limit', '_cretats_sc_columns', '_cretats_sc_exclude', '_cretats_sc_header_font_size', '_cretats_sc_body_font_size', '_cretats_sc_result_ids');

