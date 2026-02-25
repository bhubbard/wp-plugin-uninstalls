-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('serbian-transliteration-version', 'serbian-transliteration-activation', 'serbian-transliteration-ID', 'serbian-transliteration', 'serbian-transliteration-db-version', 'serbian-transliteration-db-cache-table-exists', 'serbian-transliteration-deactivation', 'serbian-transliteration-activated', 'serbian-transliteration-reviewed', 'serbian-transliteration-donated', 'rstr_allowed_sites', 'transliteration_redirect', 'serbian-transliteration-ads');
DELETE FROM wp_options WHERE option_name LIKE '%-db-cache-table-exists';
DELETE FROM wp_options WHERE option_name LIKE '%-activation';
DELETE FROM wp_options WHERE option_name LIKE '%-ID';
DELETE FROM wp_options WHERE option_name LIKE '%-html-tags';
DELETE FROM wp_options WHERE option_name LIKE '%-version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_old_slug', '_wp_cyr_slug', '_wp_lat_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_old_slug', '_wp_cyr_slug', '_wp_lat_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_old_slug', '_wp_cyr_slug', '_wp_lat_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_old_slug', '_wp_cyr_slug', '_wp_lat_slug');

