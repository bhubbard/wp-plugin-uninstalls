-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yikes_cpt_use_the_content', 'yikes_woo_reusable_products_tabs_applied', 'yikes_woo_reusable_products_tabs', 'yikes_woocommerce_custom_product_tabs_db_version', 'custom_product_tabs_onesixone_data_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yikes_woo_products_tabs');
DELETE FROM wp_usermeta WHERE meta_key IN ('yikes_woo_products_tabs');
DELETE FROM wp_termmeta WHERE meta_key IN ('yikes_woo_products_tabs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yikes_woo_products_tabs');

