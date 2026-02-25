-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nearst_upload_key', 'nearst_last_error', 'nearst_upload_type', 'nearst_last_upload_products', 'nearst_last_upload', 'nearst_product_identifier', 'nearst_activated', 'nearst_auto_update_enabled', 'auto_update_plugins');

