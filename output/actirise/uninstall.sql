-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'actirise-api_version', 'actirise-api-lastupdate', 'actirise-debug-last-update');
DELETE FROM wp_options WHERE option_name LIKE '%_logs';
DELETE FROM wp_options WHERE option_name LIKE '%adstxt-lastupdate';
DELETE FROM wp_options WHERE option_name LIKE '%presizeddiv-lastupdate';
DELETE FROM wp_options WHERE option_name LIKE '%fastcmp-lastupdate';
DELETE FROM wp_options WHERE option_name LIKE '%init-plugin';
DELETE FROM wp_options WHERE option_name LIKE '%-presizeddiv-selected';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale');

