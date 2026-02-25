-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stripe_payments_live_public_key', 'stripe_payments_live_secret_key', 'stripe_payments_test_public_key', 'stripe_payments_test_secret_key', 'stripe_payments_is_live_keys', 'stripe_payments_is_political', 'stripe_payments_full_address', 'stripe_payments_employment', 'stripe_payments_eligibility', 'stripe_payments_currency_symbol', 'stripe_payments_trans_prefix', 'stripe_payments_ella_key', 'stripe_payments_ella_secret', 'stripe_payments_postmark_key', 'stripe_payments_postmark_address', 'stripe_payments_postmark_name', 'stripe_payments_postmark_subject', 'ngp_api_key', 'ngp_secure_url', 'ngp_support_phone', 'ngp_thanks_url', 'stripe_payments_payment_trans_prefix');

