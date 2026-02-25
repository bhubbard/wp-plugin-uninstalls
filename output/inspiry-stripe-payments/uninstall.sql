-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('realhomes_stripe_session_id', 'isp_transaction', 'txn_id', 'payment_date', 'payment_status', 'payment_gross', 'payer_email', 'mc_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('realhomes_stripe_session_id', 'isp_transaction', 'txn_id', 'payment_date', 'payment_status', 'payment_gross', 'payer_email', 'mc_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('realhomes_stripe_session_id', 'isp_transaction', 'txn_id', 'payment_date', 'payment_status', 'payment_gross', 'payer_email', 'mc_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('realhomes_stripe_session_id', 'isp_transaction', 'txn_id', 'payment_date', 'payment_status', 'payment_gross', 'payer_email', 'mc_currency');

