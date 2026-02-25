-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcf_preloading_fonts', 'bcf_font_urls', 'bcf_custom_fonts_2_0_2_migration', 'bcf_custom_fonts_2_0_migration', '_custom_fonts_db_version', 'bsf_analytics_optin', 'bsf_analytics_track');
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fonts-data', 'fonts-face', 'font-type');
DELETE FROM wp_usermeta WHERE meta_key IN ('fonts-data', 'fonts-face', 'font-type');
DELETE FROM wp_termmeta WHERE meta_key IN ('fonts-data', 'fonts-face', 'font-type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fonts-data', 'fonts-face', 'font-type');

