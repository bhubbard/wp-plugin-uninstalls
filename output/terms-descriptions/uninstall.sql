-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('td_options', 'td_db_version', 'td_terms', 'td_class', 'td_count', 'td_convert_only_single', 'td_target', 'test');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_disable_terms_descriptions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_disable_terms_descriptions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_disable_terms_descriptions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_disable_terms_descriptions');

