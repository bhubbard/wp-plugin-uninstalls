-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vesesslabs_vesessauth_options', 'vesesslabs_vesessauth_blocked_ips', 'vesesslabs_vesessauth_login_attempts', 'vesesslabs_vesessauth_login_requests', 'vesesslabs_vesessauth_registration_attempts', 'vesesslabs_vesessauth_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vesesslabs_vesessauth_login_token', 'email_verified', 'email_verification_code', 'vesesslabs_vesessauth_login_code', 'vesesslabs_vesessauth_login_code_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('vesesslabs_vesessauth_login_token', 'email_verified', 'email_verification_code', 'vesesslabs_vesessauth_login_code', 'vesesslabs_vesessauth_login_code_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('vesesslabs_vesessauth_login_token', 'email_verified', 'email_verification_code', 'vesesslabs_vesessauth_login_code', 'vesesslabs_vesessauth_login_code_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vesesslabs_vesessauth_login_token', 'email_verified', 'email_verification_code', 'vesesslabs_vesessauth_login_code', 'vesesslabs_vesessauth_login_code_timestamp');

