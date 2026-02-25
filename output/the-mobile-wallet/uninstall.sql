-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmwcg_digital_card_options', 'tmwcg_wallet_account_data');

