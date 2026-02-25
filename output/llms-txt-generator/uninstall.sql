-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llms_txt_generator_last_update', 'llms_txt_generator_options', 'llms_txt_generator_validation', 'llms_txt_validation_errors');

