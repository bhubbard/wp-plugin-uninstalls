-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email_send', 'notice_template', 'meta_email_to', 'emails');
DELETE FROM wp_usermeta WHERE meta_key IN ('email_send', 'notice_template', 'meta_email_to', 'emails');
DELETE FROM wp_termmeta WHERE meta_key IN ('email_send', 'notice_template', 'meta_email_to', 'emails');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email_send', 'notice_template', 'meta_email_to', 'emails');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_%';

