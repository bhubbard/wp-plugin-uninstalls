-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbpc-enabled', 'pbpc-button_text', 'pbpc-max_products', 'pbpc-disable_shop', 'pbpc-disable_product', 'pbpc-table_caption', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'comparison_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'comparison_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'comparison_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'comparison_attributes');

