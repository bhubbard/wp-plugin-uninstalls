-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmgenius_db_version', 'lmgenius_home_url_parsed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lmgenius_temporary_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lmgenius_temporary_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lmgenius_temporary_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lmgenius_temporary_rules');

