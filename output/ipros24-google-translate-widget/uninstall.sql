-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipros24-google-translate-options', 'ipros24-google-translate-options-wordpress');

