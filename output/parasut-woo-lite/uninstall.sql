-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parasut_api_settings', 'parasut_araclar_ayarlar', 'parasut_license_key', 'parasut_ana_ayarlar');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('parasut_urun_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('parasut_urun_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('parasut_urun_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('parasut_urun_id');

