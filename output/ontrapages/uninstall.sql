-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opAppID', 'opAPIKey', 'opApiKey', 'opAppSecret', 'opAPIFix', 'opValidCreds', 'opApiSource');
DELETE FROM wp_options WHERE option_name LIKE 'ontrapages_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'ontrapages_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ontrapage');
DELETE FROM wp_usermeta WHERE meta_key IN ('ontrapage');
DELETE FROM wp_termmeta WHERE meta_key IN ('ontrapage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ontrapage');

