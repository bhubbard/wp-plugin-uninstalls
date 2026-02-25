-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cheqpay_link_settings');
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_challenge_jwt_%';
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_challenge_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_ddc_jwt_%';
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_ddc_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_ddc_payment_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_ddc_session_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'cheqpay_authentication_transaction_id_%';

