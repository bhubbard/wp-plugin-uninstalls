-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AutoCatActive', 'AutoCatRuleIDs', 'AutoCatRule1Cat', 'AutoCatRule1Phrase', 'AutoCatLastSorted');
DELETE FROM wp_options WHERE option_name LIKE '%Cat';
DELETE FROM wp_options WHERE option_name LIKE '%Phrase';

