-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ndg_spr_version', 'rooter2484_theme_options', 'emr_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ndg_Speedy_Page_Redirect', '_ndg_speedy_page_redirect');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ndg_Speedy_Page_Redirect', '_ndg_speedy_page_redirect');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ndg_Speedy_Page_Redirect', '_ndg_speedy_page_redirect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ndg_Speedy_Page_Redirect', '_ndg_speedy_page_redirect');

