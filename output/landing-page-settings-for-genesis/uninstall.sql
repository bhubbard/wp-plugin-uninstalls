-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genesis-landing-page-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_glps_lp_settings_mobile', '_glps_lp_settings_regular');
DELETE FROM wp_usermeta WHERE meta_key IN ('_glps_lp_settings_mobile', '_glps_lp_settings_regular');
DELETE FROM wp_termmeta WHERE meta_key IN ('_glps_lp_settings_mobile', '_glps_lp_settings_regular');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_glps_lp_settings_mobile', '_glps_lp_settings_regular');

