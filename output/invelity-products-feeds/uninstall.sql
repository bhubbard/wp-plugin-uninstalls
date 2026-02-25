-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invelity_product_feeds_setting_values', 'woocommerce_currency', 'wf_check_duplicate', 'invelity-ikros-invoices-ad', 'invelity-plugins-description', 'invelity-plugins-ad');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invelity_google_category', '_wpmr_mpn', 'invelity_heureka_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('invelity_google_category', '_wpmr_mpn', 'invelity_heureka_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('invelity_google_category', '_wpmr_mpn', 'invelity_heureka_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invelity_google_category', '_wpmr_mpn', 'invelity_heureka_category');

