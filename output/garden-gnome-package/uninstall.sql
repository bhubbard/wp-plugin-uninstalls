-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ggsw_import_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ggsw_width', 'ggsw_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('ggsw_width', 'ggsw_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('ggsw_width', 'ggsw_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ggsw_width', 'ggsw_height');

