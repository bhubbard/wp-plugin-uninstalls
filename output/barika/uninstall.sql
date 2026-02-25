-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('barika_connection_revoked', 'barika_revocation_message', 'barika_webhook_secret', 'barika_last_health_check', 'barika_connection_health', 'barika_connected', 'barika_connection_token', 'barika_store_id', 'barika_connected_at', 'woocommerce_email_from_address', 'barika_custom_api_url', 'barika_webhook_ids', 'barika_oauth_state');

