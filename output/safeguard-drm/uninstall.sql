-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsgdrm_av_apikeydrm', 'wpsgdrm_fm_firstname', 'wpsgdrm_fm_lastname', 'wpsgdrm_fm_email', 'wpsgdrm_fm_company', 'wpsgdrm_fm_domain', 'wpsgdrm_av_allowwindows', 'wpsgdrm_av_allowmac', 'wpsgdrm_av_allowandroid', 'wpsgdrm_av_allowios', 'wpsgdrm_av_allowremote', 'wpsgdrm_av_Version_windows', 'wpsgdrm_av_Version_mac', 'wpsgdrm_av_Version_android', 'wpsgdrm_av_Version_ios', 'wpsgdrm_settings');
DELETE FROM wp_options WHERE option_name LIKE 'wpsgdrm_%';

