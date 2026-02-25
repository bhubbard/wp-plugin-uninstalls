-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartresq_sync_interval', 'cartresq_enable_auto_sync', 'cartresq_api_url', 'cartresq_api_key', 'cartresq_consumer_key', 'cartresq_consumer_secret', 'cartresq_key_name', 'cartresq_last_sync', 'cartresq_sync_status', 'cartresq_abandonment_threshold', 'cartresq_enable_email_notifications', 'cartresq_track_guest_carts', 'cartresq_minimum_cart_value', 'cartresq_exclude_products', 'cartresq_cart_retention_days', 'cartresq_data_refresh_days', 'cartresq_auto_clear_old_data', 'cartresq_sync_logs', 'cartresq_api_key_name', 'cartresq_api_key_description', 'cartresq_key_type', 'cartresq_key_id', 'cartresq_api_key_id', 'cartresq_last_api_response', 'cartresq_last_api_error', 'cartresq_last_cart');

