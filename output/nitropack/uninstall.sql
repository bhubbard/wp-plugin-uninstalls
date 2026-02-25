-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nitropack-minimumLogLevel', 'gd_system_last_cache_flush', 'nitropack-autoCachePurge', 'nitropack-cacheableObjectTypes', 'nitropack-bbCacheSyncPurge', 'woo_multi_currency_params', 'dlm_dp_downloading_page', 'dlm_download_endpoint', 'geot_settings', 'nitropack-onboardingPassed', 'nitropack-canEditorClearCache', 'nitropack-distribution', 'nitropack-enableCompression', 'nitropack-webhookToken', 'nitropack-dismissed-notices', 'nitropack-nonCacheableObjectTypes', 'nitropack-warmup-sitemap', 'nitropack-activation-redirect', 'nitropack_sale_product_dates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_expiration-date', 'start_date', 'end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_expiration-date', 'start_date', 'end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_expiration-date', 'start_date', 'end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_expiration-date', 'start_date', 'end_date');

