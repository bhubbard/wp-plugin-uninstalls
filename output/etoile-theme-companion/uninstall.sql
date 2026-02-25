-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EWD_UPCP_Theme_Featured_Products_Type', 'EWD_UPCP_Theme_Featured_Products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_testimonialName', '_testimonialCompany');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_testimonialName', '_testimonialCompany');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_testimonialName', '_testimonialCompany');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_testimonialName', '_testimonialCompany');

