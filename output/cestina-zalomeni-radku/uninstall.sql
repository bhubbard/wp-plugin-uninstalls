-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bozimediazalomeni_prepositions', 'bozimediazalomeni_prepositions_list', 'bozimediazalomeni_conjunctions', 'bozimediazalomeni_conjunctions_list', 'bozimediazalomeni_abbreviations', 'bozimediazalomeni_abbreviations_list', 'bozimediazalomeni_between_number_and_unit', 'bozimediazalomeni_between_number_and_unit_list', 'bozimediazalomeni_space_between_numbers', 'bozimediazalomeni_space_after_ordered_number', 'bozimediazalomeni_spaces_in_scales', 'bozimediazalomeni_matches', 'bozimediazalomeni_replacements', 'bozimediazalomeni_acf', 'bozimediazalomeni_matches_empty', 'bozimediazalomeni_acf_the_content');
DELETE FROM wp_options WHERE option_name LIKE 'bozimediazalomeni_%';
DELETE FROM wp_options WHERE option_name LIKE '%_list';

