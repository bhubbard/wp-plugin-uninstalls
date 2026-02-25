-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mnm_option_1', 'mnm_option_8', 'mnm_option_6', 'mnm_option_7', 'mnm_option_2', 'mnm_option_3', 'mnm_option_4', 'mnm_option_5', 'mnm_option_12');

