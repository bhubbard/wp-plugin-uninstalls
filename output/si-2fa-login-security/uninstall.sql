-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auth_key', 'si2flose_login_attempt', 'si2flose_incorrect_code_attempts', 'si2flose_enable_users', 'mfa_enable_users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('si2flose_mfa_enable', 'si2flose_mfa_priv_key_64', 'si2flose_last_pws', 'si2flose_last_login', 'user_login_nonce', 'si2flose_private_key_path', 'nonce_hidden', 'mfa_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('si2flose_mfa_enable', 'si2flose_mfa_priv_key_64', 'si2flose_last_pws', 'si2flose_last_login', 'user_login_nonce', 'si2flose_private_key_path', 'nonce_hidden', 'mfa_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('si2flose_mfa_enable', 'si2flose_mfa_priv_key_64', 'si2flose_last_pws', 'si2flose_last_login', 'user_login_nonce', 'si2flose_private_key_path', 'nonce_hidden', 'mfa_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('si2flose_mfa_enable', 'si2flose_mfa_priv_key_64', 'si2flose_last_pws', 'si2flose_last_login', 'user_login_nonce', 'si2flose_private_key_path', 'nonce_hidden', 'mfa_last_login');

