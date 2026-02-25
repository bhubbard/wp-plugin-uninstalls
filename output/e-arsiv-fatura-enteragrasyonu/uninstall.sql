-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faturatik_trigger_status', 'faturatik_enable_debug', 'faturatik_webhook_secret', 'faturatik_api_token', 'faturatik_email_invoice_info');

