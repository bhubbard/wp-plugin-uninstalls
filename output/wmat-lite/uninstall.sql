-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmat_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('telegram_id', 'wmat_session_id', 'wmat_login_token', 'wmat_token_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('telegram_id', 'wmat_session_id', 'wmat_login_token', 'wmat_token_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('telegram_id', 'wmat_session_id', 'wmat_login_token', 'wmat_token_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('telegram_id', 'wmat_session_id', 'wmat_login_token', 'wmat_token_expiration');

