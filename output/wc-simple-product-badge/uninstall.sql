-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_simple_product_badge_title', '_wc_simple_product_badge_class', '_wc_simple_product_badge_duration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_simple_product_badge_title', '_wc_simple_product_badge_class', '_wc_simple_product_badge_duration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_simple_product_badge_title', '_wc_simple_product_badge_class', '_wc_simple_product_badge_duration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_simple_product_badge_title', '_wc_simple_product_badge_class', '_wc_simple_product_badge_duration');

