-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsp_on_product_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('priority', 'wsp_cho', 'wsp_tp', 'wsp_aac_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('priority', 'wsp_cho', 'wsp_tp', 'wsp_aac_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('priority', 'wsp_cho', 'wsp_tp', 'wsp_aac_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('priority', 'wsp_cho', 'wsp_tp', 'wsp_aac_products');

