-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pciwgas_options', 'pciwgas_sf_optin', 'pciwgas_plugin_version', 'pciwgas_install_notice');
DELETE FROM wp_options WHERE option_name LIKE 'pciwgas_categoryimage_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%cat_thumb_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%cat_thumb_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%cat_thumb_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%cat_thumb_id';

