-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcad_excluded_categories', 'wcad_discount_rules', 'wc_discount_rules', 'bdo_discount_rules', 'wc_excluded_categories', 'bdo_excluded_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_creation_date', '_sale_price', '_price', '_wcad_applied_discount_rule', '_wc_applied_discount_rule', '_bdo_applied_discount_rule', '_wcad_exclude_from_discounts', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_creation_date', '_sale_price', '_price', '_wcad_applied_discount_rule', '_wc_applied_discount_rule', '_bdo_applied_discount_rule', '_wcad_exclude_from_discounts', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_creation_date', '_sale_price', '_price', '_wcad_applied_discount_rule', '_wc_applied_discount_rule', '_bdo_applied_discount_rule', '_wcad_exclude_from_discounts', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_creation_date', '_sale_price', '_price', '_wcad_applied_discount_rule', '_wc_applied_discount_rule', '_bdo_applied_discount_rule', '_wcad_exclude_from_discounts', '_regular_price');

