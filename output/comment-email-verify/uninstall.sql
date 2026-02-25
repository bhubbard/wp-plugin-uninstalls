-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comment-email-verify');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('comment_email_verify', 'comment_email_verify_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('comment_email_verify', 'comment_email_verify_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('comment_email_verify', 'comment_email_verify_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('comment_email_verify', 'comment_email_verify_status');

