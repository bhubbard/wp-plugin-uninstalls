-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'kt_woo_ele_single_template_default');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kt_woo_ele_product_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kt_woo_ele_product_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kt_woo_ele_product_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kt_woo_ele_product_template');

