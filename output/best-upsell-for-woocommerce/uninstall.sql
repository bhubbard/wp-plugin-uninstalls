-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_cart', 'woocommerce_tax_display_shop', 'woocommerce_currency_pos', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_currency', 'woocommerce_tax_total_display');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bestupsell_text_attribute');
DELETE FROM wp_usermeta WHERE meta_key IN ('bestupsell_text_attribute');
DELETE FROM wp_termmeta WHERE meta_key IN ('bestupsell_text_attribute');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bestupsell_text_attribute');

