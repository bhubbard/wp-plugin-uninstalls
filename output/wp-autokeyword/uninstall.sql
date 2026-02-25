-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_ak_meta_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_ak_meta_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_ak_meta_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_ak_meta_keywords');

