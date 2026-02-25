-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iyzico_overlay_token', 'iyzicoWebhookUrlKey', 'iyzico_google_products_xml_last_update', 'iyzico_google_products_next_send_time', 'iyzico_google_products_xml_url', 'iyzico_google_products_retry_data', 'iyzico_google_products_last_sent', 'iyziTLS', 'iyzico_overlay_position', 'iyzico_thank_you', 'init_active_webhook_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brand', '_gtin', '_mpn', '_google_product_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brand', '_gtin', '_mpn', '_google_product_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brand', '_gtin', '_mpn', '_google_product_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brand', '_gtin', '_mpn', '_google_product_category');

