-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GBBVA_PUBLIC_KEY', 'GBBVA_SECRET_KEY', 'GBBVA_TOKEN', 'GBBVA_ORDER_STATUS', 'GBBVA_CURRENCY_CONVERT', 'GBBVA_SHOWINSTALLMENTSTABS', 'GBBVA_PAYMENTPAGETHEME', 'GBBVA_INSTALLMENTS', 'woocommerce_garantibbva_settings', 'woocommerce_gbbva_settings', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_store_phone', 'options_phone', 'garantibbva_api_token');

