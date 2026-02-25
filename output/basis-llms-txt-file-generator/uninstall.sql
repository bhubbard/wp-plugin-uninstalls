-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basis_llms_txt_file_generator_options', 'basis_llms_txt_file_generator_last_generated');
DELETE FROM wp_options WHERE option_name LIKE 'basis_llms_txt_file_generator_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'basis_llms_txt_file_generator_terms_%';

