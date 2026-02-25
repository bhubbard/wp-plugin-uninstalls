-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bankpay_plus_settings', 'bankpay_plus_analytics_version', 'bankpay_plus_setup_notice_dismissed', 'bankpay_plus_wizard_completed', 'bankpay_plus_webhook_queue', 'woocommerce_mock_bankpay_settings');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

