-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_license_activated', 'my_plugin_reference_id', 'sharkdropship_version', 'sharkdropship_settings', 'isAllowedToImport', 'alibay_daily_update_count', 'alibay_last_update_date', 'alibay_daily_import_count', 'alibay_last_import_date', 'isAllowedToImport_alibay', '_savedConfiguration_alibay', 'alibay_aliexpress_syncRegularPrice', 'alibay_aliexpress_syncSalePrice', 'alibay_aliexpress_syncStock', 'alibay_aliexpress_priceFormulaIntervalls', 'alibay_aliexpress_isShippingCostEnabled', 'alibay_aliexpress_isEnableAutomaticUpdateForAvailability', 'alibay_aliexpress_isUpdateRegularPrice', 'alibay_aliexpress_isUpdateSalePrice', 'alibay_aliexpress_isUpdateStock', 'alibay_aliexpress_onlyPublishProductWillSync', 'alibay_aliexpress_enableAutomaticUpdates', 'alibay_aliexpress_applyPriceFormulaAutomaticUpdate', 'stop_automatic_update_for_ebay');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sharkdropship_extension_notice_dismissed', 'productUrl', 'product_views', 'selectedCurrency', 'lastUpdatedDate', '_product_url', '_product_attributes', 'rating', 'lastUpdated', 'isExpired', '_regular_price', '_price', '_stock', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('sharkdropship_extension_notice_dismissed', 'productUrl', 'product_views', 'selectedCurrency', 'lastUpdatedDate', '_product_url', '_product_attributes', 'rating', 'lastUpdated', 'isExpired', '_regular_price', '_price', '_stock', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('sharkdropship_extension_notice_dismissed', 'productUrl', 'product_views', 'selectedCurrency', 'lastUpdatedDate', '_product_url', '_product_attributes', 'rating', 'lastUpdated', 'isExpired', '_regular_price', '_price', '_stock', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sharkdropship_extension_notice_dismissed', 'productUrl', 'product_views', 'selectedCurrency', 'lastUpdatedDate', '_product_url', '_product_attributes', 'rating', 'lastUpdated', 'isExpired', '_regular_price', '_price', '_stock', '_sale_price');

