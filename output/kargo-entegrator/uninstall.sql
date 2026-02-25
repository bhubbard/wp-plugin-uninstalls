-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'gcargo_db_version', 'gcargo_sync_last_update', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gcargo_seller_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('gcargo_seller_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('gcargo_seller_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gcargo_seller_id');

