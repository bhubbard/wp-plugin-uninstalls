-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ship_per_product_details', 'product_based_shipping_details');
DELETE FROM wp_options WHERE option_name LIKE 'CEDSPPM%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prod_per_ship_rate', 'enable_ced_product_based_shipping', 'enable_ship_pr_variable');
DELETE FROM wp_usermeta WHERE meta_key IN ('prod_per_ship_rate', 'enable_ced_product_based_shipping', 'enable_ship_pr_variable');
DELETE FROM wp_termmeta WHERE meta_key IN ('prod_per_ship_rate', 'enable_ced_product_based_shipping', 'enable_ship_pr_variable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prod_per_ship_rate', 'enable_ced_product_based_shipping', 'enable_ship_pr_variable');

