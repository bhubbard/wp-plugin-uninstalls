-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leaderboard_options', 'leaderboard_num_top_shoppers', 'leadfowo_prize_email_subject', 'leadfowo_prize_email_body', 'leadfowo_monthly_duplicate_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_leadfowo_month', '_leadfowo_year', '_leadfowo_prizes_data', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_leadfowo_month', '_leadfowo_year', '_leadfowo_prizes_data', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_leadfowo_month', '_leadfowo_year', '_leadfowo_prizes_data', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_leadfowo_month', '_leadfowo_year', '_leadfowo_prizes_data', 'billing_phone');

