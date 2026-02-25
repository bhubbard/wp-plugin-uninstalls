-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%updated_gmt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%updated_gmt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%updated_gmt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%updated_gmt';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%created_gmt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%created_gmt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%created_gmt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%created_gmt';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%id';

