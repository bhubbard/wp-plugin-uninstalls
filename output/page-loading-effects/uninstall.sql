-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ple_option_3', 'ple_option_6', 'ple_option_7', 'ple_option_2', 'ple_option_1', 'ple_option_4', 'ple_option_5');

