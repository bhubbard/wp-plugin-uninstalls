-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_metabox', 'remove_leading', 'remove_all', 'remove_trailing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mgwe_single_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('mgwe_single_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('mgwe_single_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mgwe_single_disable');

