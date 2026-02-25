-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppwp_previous_protected_categories', 'ppwp_previous_protected_tags', 'wp_protect_password_license_key', 'wp_protect_password_licensed', 'WpFastestCacheExclude', 'ppw_data_checksum', 'wpfolio_ppwp_anylc_redirect', 'wpfolio_ppwp_anylc_site_uid', 'ppwp_sidebar_content');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE 'wpfolio_ppwp_anylc_optin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpfolio_ppwp_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ppwp_post_password_bk');
DELETE FROM wp_usermeta WHERE meta_key IN ('ppwp_post_password_bk');
DELETE FROM wp_termmeta WHERE meta_key IN ('ppwp_post_password_bk');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ppwp_post_password_bk');

