-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hi_express_settings', 'hi_express_webhook_registered', 'hi_express_govs_simple_v2', 'hi_express_govs_v5', 'hi_express_order_statuses_v2');
DELETE FROM wp_options WHERE option_name LIKE 'hi_express_bulk_errors_%';

