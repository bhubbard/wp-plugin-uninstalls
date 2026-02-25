-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SPPRO_PUBLIC_KEY', 'SPPRO_SECRET_KEY', 'SPPRO_TOKEN', 'SPPRO_ORDER_STATUS', 'SPPRO_CURRENCY_CONVERT', 'SPPRO_SHOWINSTALLMENTSTABS', 'SPPRO_PAYMENTPAGETHEME', 'SPPRO_INSTALLMENTS', 'SANALPOSPRO_ACCESS_TOKEN', 'woocommerce_sanalpospro_settings', 'woocommerce_sppro_settings', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_store_phone', 'options_phone', 'sanalpospro_api_token');

