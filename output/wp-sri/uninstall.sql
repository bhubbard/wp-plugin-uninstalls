-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_sri_known_hashes', 'wp_sri_excluded_hashes');
DELETE FROM wp_options WHERE option_name LIKE '%excluded_hashes';
DELETE FROM wp_options WHERE option_name LIKE '%known_hashes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_sri_hashes_per_page', 'managetools_page_wp_sri_admincolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_sri_hashes_per_page', 'managetools_page_wp_sri_admincolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_sri_hashes_per_page', 'managetools_page_wp_sri_admincolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_sri_hashes_per_page', 'managetools_page_wp_sri_admincolumnshidden');

