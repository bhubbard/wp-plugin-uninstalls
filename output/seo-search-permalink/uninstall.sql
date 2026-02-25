-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssp_permalink', 'ssp_separate_symbol_option', 'ssp_filter_character_option', 'ssp_letter_type_option', 'ssp_filter_words');

