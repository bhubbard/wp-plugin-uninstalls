-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('icl_admin_language', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('icl_admin_language', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('icl_admin_language', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('icl_admin_language', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_recipients';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_recipients';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_recipients';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_recipients';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_subject';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_subject';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_subject';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_subject';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachments';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachments';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachments';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachments';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cc';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_bcc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_bcc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_bcc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_bcc';

