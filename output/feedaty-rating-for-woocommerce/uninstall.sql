-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedaty-merchant-code', 'feedaty-client-secret', 'fdOrderStatus', 'feedaty-prod-microdata-enabled', 'feedaty-prod-tab-enabled', 'wid-store-enabled', 'wid-store-style', 'prod-enabled', 'prod-position', 'product-badge-style', 'debug-acme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('feedaty_ean', '_feedaty_rate', '_feedaty_count', '_feedaty_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('feedaty_ean', '_feedaty_rate', '_feedaty_count', '_feedaty_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('feedaty_ean', '_feedaty_rate', '_feedaty_count', '_feedaty_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('feedaty_ean', '_feedaty_rate', '_feedaty_count', '_feedaty_url');

