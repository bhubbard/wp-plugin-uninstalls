-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmdb_api_key', 'wpmdb_donated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmdb_search_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmdb_search_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmdb_search_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmdb_search_field');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title';

