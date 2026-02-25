-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lili_user_id', 'lili_auth_token', 'lili_challenge_id', 'lili_challenge', 'lili_auth_token_timestamp');
DELETE FROM wp_options WHERE option_name LIKE 'lili_user_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'lili_user_transactions_%';

