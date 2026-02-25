-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ussync-email-header', 'ussync_email_confemail', 'ussync_email_conf_title');
DELETE FROM wp_options WHERE option_name LIKE 'ussync_secret_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'ussync_domain_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'ussync_no_user_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ussync_has_not_logged_in_yet', 'ussync_email_verifiedcode', 'ussync_email_verified', 'session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('ussync_has_not_logged_in_yet', 'ussync_email_verifiedcode', 'ussync_email_verified', 'session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('ussync_has_not_logged_in_yet', 'ussync_email_verifiedcode', 'ussync_email_verified', 'session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ussync_has_not_logged_in_yet', 'ussync_email_verifiedcode', 'ussync_email_verified', 'session_tokens');

