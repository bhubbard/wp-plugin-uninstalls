-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bitfire_mfa_code', 'bitfire_mfa_tel', 'bitfire_last_login', 'bitfire_mfa_correct', 'bitfire_mfa_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('bitfire_mfa_code', 'bitfire_mfa_tel', 'bitfire_last_login', 'bitfire_mfa_correct', 'bitfire_mfa_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('bitfire_mfa_code', 'bitfire_mfa_tel', 'bitfire_last_login', 'bitfire_mfa_correct', 'bitfire_mfa_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bitfire_mfa_code', 'bitfire_mfa_tel', 'bitfire_last_login', 'bitfire_mfa_correct', 'bitfire_mfa_sent');

