-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abovewp_bge_enabled', 'abovewp_bge_show_single_product', 'abovewp_bge_show_variable_product', 'abovewp_bge_show_cart_item', 'abovewp_bge_show_cart_subtotal', 'abovewp_bge_show_cart_total', 'abovewp_bge_show_order_totals', 'abovewp_bge_show_orders_table', 'abovewp_bge_show_api_prices', 'abovewp_bge_show_shipping_labels', 'abovewp_bge_show_tax_labels', 'abovewp_bge_show_mini_cart', 'abovewp_bge_show_thank_you_page', 'abovewp_bge_eur_position', 'abovewp_bge_eur_format', 'abovewp_bge_bgn_rounding', 'woocommerce_tax_display_cart', 'woocommerce_tax_display_shop', 'abovewp_bge_migration_in_progress', 'abovewp_bge_migration_offset', 'abovewp_bge_migration_total', 'abovewp_bge_migration_last_error', 'woocommerce_currency', 'abovewp_bge_eur_label');
DELETE FROM wp_options WHERE option_name LIKE 'abovewp_bge_show_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('abovewp_migration_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('abovewp_migration_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('abovewp_migration_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('abovewp_migration_notice_dismissed');

