-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icgpt_enable', 'icgpt_merchant_id', 'icgpt_webhook_secret', 'icgpt_test_mode', 'icgpt_default_enable_checkout');

