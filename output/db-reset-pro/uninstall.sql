-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dup_db_reset_pro_reset_count', 'dup_db_reset_pro_review_status', 'dup_db_reset_pro_review_snooze_until', 'dup_db_reset_pro_review_snooze_reset_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag';

