-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zalomeni_czsk_settings', 'zalomeni_settings', 'zalomeni_version', 'zalomeni_matches', 'zalomeni_replacements');

