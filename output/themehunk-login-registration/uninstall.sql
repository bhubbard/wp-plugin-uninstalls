-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thlogin_settings', 'thlogin_stored_slug', 'rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thlogin_email_verification_key', 'thlogin_email_verified', 'thlogin_pending_approval');
DELETE FROM wp_usermeta WHERE meta_key IN ('thlogin_email_verification_key', 'thlogin_email_verified', 'thlogin_pending_approval');
DELETE FROM wp_termmeta WHERE meta_key IN ('thlogin_email_verification_key', 'thlogin_email_verified', 'thlogin_pending_approval');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thlogin_email_verification_key', 'thlogin_email_verified', 'thlogin_pending_approval');

