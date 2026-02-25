-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwpOptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cubewp_wallet_payout_methods', 'cubewp_wallet_available_funds', 'cubewp_wallet_on_hold_funds', 'cubewp_wallet_overall_funds', 'cubewp_wallet_withdrawn_funds');
DELETE FROM wp_usermeta WHERE meta_key IN ('cubewp_wallet_payout_methods', 'cubewp_wallet_available_funds', 'cubewp_wallet_on_hold_funds', 'cubewp_wallet_overall_funds', 'cubewp_wallet_withdrawn_funds');
DELETE FROM wp_termmeta WHERE meta_key IN ('cubewp_wallet_payout_methods', 'cubewp_wallet_available_funds', 'cubewp_wallet_on_hold_funds', 'cubewp_wallet_overall_funds', 'cubewp_wallet_withdrawn_funds');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cubewp_wallet_payout_methods', 'cubewp_wallet_available_funds', 'cubewp_wallet_on_hold_funds', 'cubewp_wallet_overall_funds', 'cubewp_wallet_withdrawn_funds');

