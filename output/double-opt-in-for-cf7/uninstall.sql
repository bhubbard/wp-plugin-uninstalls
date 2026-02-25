-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7optin_main_settings', 'cf7optin_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_form', '_reg_headers', '_csv', '_reg_email', '_reg_title', '_reg_files', '_reg_template', '_con_title', '_con_template', '_final_attachment', '_form', '_accepted', '_field_accepted', '_additional_settings', '_meta', '_from_email', '_subject');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_form', '_reg_headers', '_csv', '_reg_email', '_reg_title', '_reg_files', '_reg_template', '_con_title', '_con_template', '_final_attachment', '_form', '_accepted', '_field_accepted', '_additional_settings', '_meta', '_from_email', '_subject');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_form', '_reg_headers', '_csv', '_reg_email', '_reg_title', '_reg_files', '_reg_template', '_con_title', '_con_template', '_final_attachment', '_form', '_accepted', '_field_accepted', '_additional_settings', '_meta', '_from_email', '_subject');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_form', '_reg_headers', '_csv', '_reg_email', '_reg_title', '_reg_files', '_reg_template', '_con_title', '_con_template', '_final_attachment', '_form', '_accepted', '_field_accepted', '_additional_settings', '_meta', '_from_email', '_subject');

