-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%department_emails';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%department_emails';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%department_emails';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%department_emails';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%department_categories';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%department_categories';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%department_categories';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%department_categories';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%selected_products';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%selected_products';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%selected_products';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%selected_products';

