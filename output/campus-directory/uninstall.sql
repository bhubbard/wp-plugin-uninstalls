-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p2p_storage', 'emd_session_db_version', 'emd_license_settings', 'emd_inline_ent_list', 'emd_activated_plugins', 'secure_cookies', 'cookie_http_only', 'session_delete_batch_size', 'campus_directory_ent_map_list', 'campus_directory_tax_settings', 'campus_directory_tools', 'campus_directory_vcard_field_list', 'campus_directory_tracking_optin', 'campus_directory_show_rateme_plugin_min', 'campus_directory_ent_list', 'campus_directory_activation_date', 'campus_directory_tax_list', 'campus_directory_rel_list', 'campus_directory_shc_list', 'campus_directory_misc_settings', 'campus_directory_attr_list');
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
DELETE FROM wp_options WHERE option_name LIKE '%_glob_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_list';
DELETE FROM wp_options WHERE option_name LIKE '%_tax_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_tools';
DELETE FROM wp_options WHERE option_name LIKE '%_add_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_rel_list';
DELETE FROM wp_options WHERE option_name LIKE '%_limitby_auth_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_comment_list';
DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_calendar';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages';
DELETE FROM wp_options WHERE option_name LIKE '%_widg_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_ldap';
DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice1';
DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice2';
DELETE FROM wp_options WHERE option_name LIKE '%_access_views';
DELETE FROM wp_options WHERE option_name LIKE '%_login_settings';
DELETE FROM wp_options WHERE option_name LIKE 'emd_form_id_%';
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE '%_ext_field_list';
DELETE FROM wp_options WHERE option_name LIKE '%_activate_redirect';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_person_photo');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_person_photo');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_person_photo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by', 'emd_person_photo');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emd_ratings_average_%';

