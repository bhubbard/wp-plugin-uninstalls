-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bcs_login_email', 'bcs_login_email_ad');
DELETE FROM wp_usermeta WHERE meta_key IN ('bcs_login_email', 'bcs_login_email_ad');
DELETE FROM wp_termmeta WHERE meta_key IN ('bcs_login_email', 'bcs_login_email_ad');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bcs_login_email', 'bcs_login_email_ad');

