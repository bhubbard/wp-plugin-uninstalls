-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirect2url_newtabsrc', 'redirect2url_url_history');
DELETE FROM wp_options WHERE option_name LIKE '%_url';
DELETE FROM wp_options WHERE option_name LIKE '%_newtab';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('redirect2url_meta_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('redirect2url_meta_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('redirect2url_meta_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('redirect2url_meta_value_key');

