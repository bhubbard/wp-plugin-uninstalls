-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msm_hiddenstatus_option_mycn', 'msm_enabled_option_mycn', 'msm_username_option_mycn', 'msm_password_option_mycn', 'msm_myplugin_section2_settings', 'msm_china_option_mycn', 'msm_saudi_option_mycn');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'room');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'room');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'room');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'room');

