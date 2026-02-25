-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_gs_ext_basics_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7_gs_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7_gs_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7_gs_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7_gs_settings');

