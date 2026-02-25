-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit');

