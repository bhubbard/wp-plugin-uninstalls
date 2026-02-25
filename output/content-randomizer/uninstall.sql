-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elm_randomizer_permalinks', 'elm_randomizer', 'elm_randomizer_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_date_from', '_date_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_date_from', '_date_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_date_from', '_date_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_date_from', '_date_to');

