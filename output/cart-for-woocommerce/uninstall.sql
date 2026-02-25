-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_customer_address', 'fkwcs_wp_stripe', 'woocommerce_currency', 'woocommerce-ppcp-settings', 'fkcart_settings', 'trp_settings', 'fkcart_db_options', 'fkcart_db_options_new_db', 'woocommerce_tax_display_shop', 'woocommerce_tax_total_display', 'fkcart_templates_v3');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fkcart_notifications_close');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fkcart_notifications_close');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fkcart_notifications_close');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fkcart_notifications_close');

