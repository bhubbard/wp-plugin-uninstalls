-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dltpays_store_id', 'dltpays_api_secret', 'dltpays_wallet_address', 'dltpays_payout_threshold', 'dltpays_payout_schedule', 'dltpays_payout_mode', 'dltpays_wallet_type', 'dltpays_social_provider', 'dltpays_api_key', 'dltpays_referral_code', 'dltpays_commission_rates', 'dltpays_cookie_days', 'dltpays_testnet_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dltpays_referral_code', '_dltpays_processed', '_dltpays_payout_id', '_dltpays_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dltpays_referral_code', '_dltpays_processed', '_dltpays_payout_id', '_dltpays_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dltpays_referral_code', '_dltpays_processed', '_dltpays_payout_id', '_dltpays_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dltpays_referral_code', '_dltpays_processed', '_dltpays_payout_id', '_dltpays_error');

