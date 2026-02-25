-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninestarki_language', 'ninestarki_first_install', 'ninestarki_restore_defaults', 'ninestarki_title_year', 'ninestarki_title_month', 'ninestarki_title_expression', 'ninestarki_character_first_number_1', 'ninestarki_character_first_number_2', 'ninestarki_character_first_number_3', 'ninestarki_character_first_number_4', 'ninestarki_character_first_number_5', 'ninestarki_character_first_number_6', 'ninestarki_character_first_number_7', 'ninestarki_character_first_number_8', 'ninestarki_character_first_number_9', 'ninestarki_description_1', 'ninestarki_description_2', 'ninestarki_description_3', 'ninestarki_description_4', 'ninestarki_description_5', 'ninestarki_description_6', 'ninestarki_description_7', 'ninestarki_description_8', 'ninestarki_description_9');

