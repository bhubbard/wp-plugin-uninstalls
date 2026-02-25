-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jalpi_ln_country_list', 'jalpi_ln_last_cache_cleanup', 'jalpi_ln_fallback_country_list', 'jalpi_ln_logs_buffer');
DELETE FROM wp_options WHERE option_name LIKE 'jalpi_ln_fallback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'shipping_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'shipping_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'shipping_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'shipping_phone');

