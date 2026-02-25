-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wls_site_url', '_wls_logo_description', '_wls_logo_alt_text', '_wls_logo_img_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wls_site_url', '_wls_logo_description', '_wls_logo_alt_text', '_wls_logo_img_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wls_site_url', '_wls_logo_description', '_wls_logo_alt_text', '_wls_logo_img_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wls_site_url', '_wls_logo_description', '_wls_logo_alt_text', '_wls_logo_img_url');

