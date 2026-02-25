-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jfpb_justification_mode', 'jfpb_enable_hyphens', 'jfpb_word_spacing', 'jfpb_word_spacing_custom_value', 'jfpb_word_spacing_custom_unit');

