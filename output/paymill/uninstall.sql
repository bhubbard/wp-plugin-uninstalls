-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp_settings', 'woocommerce_check_page_id', 'paymill_webhook_id', 'paymill_db_version');

