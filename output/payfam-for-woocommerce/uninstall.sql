-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payfam_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payfam_webhook_processed', '_payfam_expected_amount', '_payfam_account_name', '_payfam_account_number', '_payfam_bank_name', '_payfam_api_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payfam_webhook_processed', '_payfam_expected_amount', '_payfam_account_name', '_payfam_account_number', '_payfam_bank_name', '_payfam_api_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payfam_webhook_processed', '_payfam_expected_amount', '_payfam_account_name', '_payfam_account_number', '_payfam_bank_name', '_payfam_api_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payfam_webhook_processed', '_payfam_expected_amount', '_payfam_account_name', '_payfam_account_number', '_payfam_bank_name', '_payfam_api_response');

