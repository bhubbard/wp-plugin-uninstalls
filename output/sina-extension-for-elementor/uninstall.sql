-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sina_widgets', 'sina_extenders', 'sina_map_apikey', 'sina_mailchimp', 'sina_templates_option', 'sina_ext_pro_recaptcha_key', 'sina_ext_pro_recaptcha_secret_key', 'sina_ext_after_logout_url', 'sina_ext_type', 'sina_ext_pro_license_key', 'sina_ext_license_key', 'sina_ext_pro_validity', 'sina_ext_pro_check', 'sina_extension_activation', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'sina_contact_email%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_wp_page_template', 'sina-ext-template-meta_type', 'sina_visit_counter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_wp_page_template', 'sina-ext-template-meta_type', 'sina_visit_counter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_wp_page_template', 'sina-ext-template-meta_type', 'sina_visit_counter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_wp_page_template', 'sina-ext-template-meta_type', 'sina_visit_counter');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_location';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_location';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_location';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_location';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_splocation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_splocation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_splocation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_splocation';

