-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asnp_easy_product_bundle_settings', 'asnp_easy_product_bundle_review', 'asnp_wepb_db_version', 'woocommerce_calc_taxes', 'asnp_wepb_installing');
DELETE FROM wp_options WHERE option_name LIKE '%_added';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

