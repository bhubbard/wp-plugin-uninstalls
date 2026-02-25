-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_terms_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_erpup_with_coupon', '_erpup_cagnotte_amount', '_created_by_erpup', 'erpup_cagnotte_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_erpup_with_coupon', '_erpup_cagnotte_amount', '_created_by_erpup', 'erpup_cagnotte_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_erpup_with_coupon', '_erpup_cagnotte_amount', '_created_by_erpup', 'erpup_cagnotte_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_erpup_with_coupon', '_erpup_cagnotte_amount', '_created_by_erpup', 'erpup_cagnotte_amount');

