-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affinipay_public_key', 'affinipay_secret_key', 'affinipay_operating_mode', 'affinipay_receipt_page', 'affinipay_mode', 'affinipay_test_public_key', 'affinipay_test_secret_key', 'affinipay_test_account_id', 'affinipay_live_public_key', 'affinipay_live_secret_key', 'affinipay_live_account_id');

