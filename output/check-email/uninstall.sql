-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('check-email-smtp-options', 'check_email_smtp_status', 'check-email-email-encode-options', 'checkmail_admin_fcm_token', 'check-email-email-notify-options', 'check-email-log-global-smtp', 'check-email-log-core', 'check-email-rate-time', 'check_email_e_filter_priority', 'check-email-log-db');
DELETE FROM wp_options WHERE option_name LIKE '%-options';
DELETE FROM wp_options WHERE option_name LIKE 'check_email_spam_score_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

