-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automatic-product-categories-for-woocommerce', 'automatic-product-categories-for-woocommerce-backup', 'automatic-product-categories-for-woocommerce-backup-date', 'default_product_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('berrypress_page_automatic_product_categories_for_woocommerce_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('berrypress_page_automatic_product_categories_for_woocommerce_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('berrypress_page_automatic_product_categories_for_woocommerce_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('berrypress_page_automatic_product_categories_for_woocommerce_per_page');

