-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emd_session_db_version', 'emd_license_settings', 'emd_inline_ent_list', 'emd_activated_plugins', 'secure_cookies', 'cookie_http_only', 'session_delete_batch_size', 'empd_com_access_views', 'empd_com_ent_map_list', 'empd_com_tax_settings', 'empd_com_tools', 'empd_com_vcard_field_list', 'empd_com_tracking_optin', 'empd_com_show_rateme_plugin_min', 'empd_com_ent_list', 'empd_com_activation_date', 'empd_com_tax_list', 'empd_com_rel_list', 'empd_com_shc_list', 'empd_com_misc_settings', 'empd_com_attr_list', 'empd_com_setup_pages_list');
DELETE FROM wp_options WHERE option_name LIKE '%_autoinc';
DELETE FROM wp_options WHERE option_name LIKE '%_misc_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_ent_map_list';
DELETE FROM wp_options WHERE option_name LIKE '%_attr_list';
DELETE FROM wp_options WHERE option_name LIKE '%_cust_roles';
DELETE FROM wp_options WHERE option_name LIKE '%_ent_list';
DELETE FROM wp_options WHERE option_name LIKE '%_user_shortcodes';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_attr_tax_list';
DELETE FROM wp_options WHERE option_name LIKE '%_tax_list';
DELETE FROM wp_options WHERE option_name LIKE '%_shc_list';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE '%_tax_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_tools';
DELETE FROM wp_options WHERE option_name LIKE '%_add_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_rel_list';
DELETE FROM wp_options WHERE option_name LIKE '%_limitby_auth_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_comment_list';
DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_calendar';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_init_tax';
DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages';
DELETE FROM wp_options WHERE option_name LIKE '%_widg_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_ldap';
DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice1';
DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice2';
DELETE FROM wp_options WHERE option_name LIKE '%_access_views';
DELETE FROM wp_options WHERE option_name LIKE '%_login_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_list';
DELETE FROM wp_options WHERE option_name LIKE 'emd_form_id_%';
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE '%_ext_field_list';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_activate_redirect';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_employee_photo');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_employee_photo');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_employee_photo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_employee_photo');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emd_ratings_average_%';

