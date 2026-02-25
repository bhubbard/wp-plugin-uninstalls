-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automator_for_paypal_mode', 'automator_for_paypal_test_client_id', 'automator_for_paypal_test_client_secret', 'automator_for_paypal_test_webhook_id', 'automator_for_paypal_live_client_id', 'automator_for_paypal_live_client_secret', 'automator_for_paypal_live_webhook_id');

