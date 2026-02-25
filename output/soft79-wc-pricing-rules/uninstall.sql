-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('j79_price_rules_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_j79_rule_type', '_j79_quantity_scope', '_j79_display_on_prod_page', '_j79_user_roles', '_j79_exclude_user_roles', '_j79_product_ids', '_j79_exclude_product_ids', '_j79_product_categories', '_j79_exclude_product_categories', '_j79_exclude_sale_items', '_j79_bulk_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_j79_rule_type', '_j79_quantity_scope', '_j79_display_on_prod_page', '_j79_user_roles', '_j79_exclude_user_roles', '_j79_product_ids', '_j79_exclude_product_ids', '_j79_product_categories', '_j79_exclude_product_categories', '_j79_exclude_sale_items', '_j79_bulk_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_j79_rule_type', '_j79_quantity_scope', '_j79_display_on_prod_page', '_j79_user_roles', '_j79_exclude_user_roles', '_j79_product_ids', '_j79_exclude_product_ids', '_j79_product_categories', '_j79_exclude_product_categories', '_j79_exclude_sale_items', '_j79_bulk_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_j79_rule_type', '_j79_quantity_scope', '_j79_display_on_prod_page', '_j79_user_roles', '_j79_exclude_user_roles', '_j79_product_ids', '_j79_exclude_product_ids', '_j79_product_categories', '_j79_exclude_product_categories', '_j79_exclude_sale_items', '_j79_bulk_rules');

