-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sendy_client_id', 'sendy_client_secret', 'sendy_access_token', 'sendy_refresh_token', 'sendy_token_expires', 'sendy_import_weight', 'sendy_import_products', 'sendy_mark_order_as_completed', 'sendy_processing_method', 'sendy_processable_order_status', 'sendy_default_shop', 'sendy_hostname', 'sendy_webhook_secret', 'sendy_previously_used_preference_id', 'sendy_previously_used_amount', 'sendy_previously_used_shop_id', 'sendy_shipping_methods_last_sync', 'sendy_webhook_last_checked', 'sendy_webhook_id', 'sendy_flash_admin_messages', 'sendy_shipping_preferences', 'sendy_shops');

