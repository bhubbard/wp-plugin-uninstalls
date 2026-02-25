-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carticy_ai_checkout_test_mode', 'carticy_ai_checkout_delete_data_on_uninstall', 'carticy_ai_checkout_webhook_url', 'carticy_ai_checkout_enable_ip_allowlist', 'carticy_ai_checkout_openai_ip_ranges_backup', 'carticy_ai_checkout_api_key', 'carticy_ai_checkout_webhook_secret', 'carticy_ai_checkout_test_webhook_url', 'carticy_ai_checkout_enable_openai_robots', 'carticy_ai_checkout_feed_last_updated', 'woocommerce_shipping_tax_class', 'carticy_ai_checkout_application_data', 'woocommerce_stripe_settings', 'carticy_ai_checkout_rate_limit_enabled', 'carticy_ai_checkout_admin_notices', 'woocommerce_weight_unit', 'carticy_ai_checkout_test_bypass_ip', 'carticy_ai_checkout_webhook_retry_queue', 'carticy_ai_checkout_openai_ip_ranges_last_updated', 'settings_errors', 'carticy_ai_checkout_wizard_test_results', 'carticy_ai_checkout_openai_ip_ranges', 'carticy_ai_checkout_test_product_sku', 'carticy_ai_checkout_conformance_test_results', 'carticy_ai_checkout_mock_scenario_results', 'carticy_ai_checkout_testing_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'carticy_ai_checkout_wizard_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'carticy_ai_checkout_spt_%';
DELETE FROM wp_options WHERE option_name LIKE '%json';
DELETE FROM wp_options WHERE option_name LIKE '%csv';
DELETE FROM wp_options WHERE option_name LIKE '%xml';
DELETE FROM wp_options WHERE option_name LIKE '%tsv';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_carticy_ai_checkout_enabled', '_carticy_ai_checkout_quality_score', '_carticy_ai_checkout_quality_issues');
DELETE FROM wp_usermeta WHERE meta_key IN ('_carticy_ai_checkout_enabled', '_carticy_ai_checkout_quality_score', '_carticy_ai_checkout_quality_issues');
DELETE FROM wp_termmeta WHERE meta_key IN ('_carticy_ai_checkout_enabled', '_carticy_ai_checkout_quality_score', '_carticy_ai_checkout_quality_issues');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_carticy_ai_checkout_enabled', '_carticy_ai_checkout_quality_score', '_carticy_ai_checkout_quality_issues');

