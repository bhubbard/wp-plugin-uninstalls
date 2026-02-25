-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raeven', 'raodd', 'caeven', 'caodd', 'fcfrcolumn', 'fcfrrow', 'customizeSetting');

