-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_annc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ninja_annc_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ninja_annc_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ninja_annc_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ninja_annc_meta');

