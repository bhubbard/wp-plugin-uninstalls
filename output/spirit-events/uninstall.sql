-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tssev_options', 'tssev_db_version', 'rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('include_in_main_loop');
DELETE FROM wp_usermeta WHERE meta_key IN ('include_in_main_loop');
DELETE FROM wp_termmeta WHERE meta_key IN ('include_in_main_loop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('include_in_main_loop');

