-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contexa_api_key', 'contexa_api_url', 'contexa_auto_sync', 'contexa_content_auto_sync', 'contexa_content_sync_types', 'contexa_content_sync_enabled', 'contexa_error_logging_enabled', 'contexa_log_to_remote', 'contexa_remote_log_url', 'contexa_remote_logging_enabled', 'contexa_tracking_enabled', 'contexa_cache_ttl', 'woocommerce_currency_pos', 'contexa_backend_url', 'contexa_activation_redirect', 'contexa_bulk_sync_products', 'contexa_bulk_sync_start_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contexa_tracked', '_contexa_visitor_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contexa_tracked', '_contexa_visitor_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contexa_tracked', '_contexa_visitor_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contexa_tracked', '_contexa_visitor_id');

