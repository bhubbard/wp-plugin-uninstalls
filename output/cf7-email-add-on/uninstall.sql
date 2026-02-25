-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7ea_admin_template', 'cf7ea_thank_you_template', '_mail', '_mail_2');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7ea_admin_template', 'cf7ea_thank_you_template', '_mail', '_mail_2');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7ea_admin_template', 'cf7ea_thank_you_template', '_mail', '_mail_2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7ea_admin_template', 'cf7ea_thank_you_template', '_mail', '_mail_2');

