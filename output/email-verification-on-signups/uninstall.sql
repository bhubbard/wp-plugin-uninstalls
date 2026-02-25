-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dw_verify_max_resend_allowed', 'dw_verify_authorize_page', 'dw_verify_autologin', 'dw_verify_redirect_page', 'dwvrf_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('verify-lock', 'verify-lock-hash-method', 'verify-link-attempts');
DELETE FROM wp_usermeta WHERE meta_key IN ('verify-lock', 'verify-lock-hash-method', 'verify-link-attempts');
DELETE FROM wp_termmeta WHERE meta_key IN ('verify-lock', 'verify-lock-hash-method', 'verify-link-attempts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('verify-lock', 'verify-lock-hash-method', 'verify-link-attempts');

