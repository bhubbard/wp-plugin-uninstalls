-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coopcycle_free_shipping', 'coopcycle_app_name', 'coopcycle_base_url', 'coopcycle_api_key', 'coopcycle_api_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

