-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evp_enable_jquery', 'evp_schet', 'evp_download', 'evp_speed', 'evp_pict', 'evp_volume', 'evp_url_rekl');

