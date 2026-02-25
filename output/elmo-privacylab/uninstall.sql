-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elmo_code_v2', 'elmo_language', 'elmo_code');

