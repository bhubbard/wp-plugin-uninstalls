-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kinguin_api_key', 'kinguin_connection_status', 'kinguin_environment', 'kinguin_cron_frequency', 'kinguin_orders_webhook_secret', 'kinguin_products_webhook_secret', 'kinguin_email_message', 'kinguin_product_margin_val', 'kinguin_product_margin', 'kinguin_discount_code', 'kinguin_enable_webhook_import', 'kinguin_settings_import', 'kinguin_currency_rate', 'woocommerce_custom_orders_table_enabled', 'kinguin_webhook_log', 'kinguin_import_only_existing', 'kinguin_product_view', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_myaccount_page_id', 'existing_kinguin_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kinguin_keys', '_kinguin_order', '_kinguinPrice', '_steam', '_ageRating', '_regionId', '_activationDetails', '_systemRequirements', '_screenshots', '_kinguin_keys_sent', '_productId', '_stock', '_stock_status', '_metacriticScore', '_releaseDate', '_originalName');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kinguin_keys', '_kinguin_order', '_kinguinPrice', '_steam', '_ageRating', '_regionId', '_activationDetails', '_systemRequirements', '_screenshots', '_kinguin_keys_sent', '_productId', '_stock', '_stock_status', '_metacriticScore', '_releaseDate', '_originalName');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kinguin_keys', '_kinguin_order', '_kinguinPrice', '_steam', '_ageRating', '_regionId', '_activationDetails', '_systemRequirements', '_screenshots', '_kinguin_keys_sent', '_productId', '_stock', '_stock_status', '_metacriticScore', '_releaseDate', '_originalName');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kinguin_keys', '_kinguin_order', '_kinguinPrice', '_steam', '_ageRating', '_regionId', '_activationDetails', '_systemRequirements', '_screenshots', '_kinguin_keys_sent', '_productId', '_stock', '_stock_status', '_metacriticScore', '_releaseDate', '_originalName');

