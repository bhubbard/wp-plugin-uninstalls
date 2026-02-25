-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('n4p_option_2', 'n4p_option_1', 'n4p_option_3', 'n4p_option_4', 'n4p_option_5', 'n4p_option_6', 'n4p_option_7');

