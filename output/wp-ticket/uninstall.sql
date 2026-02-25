-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p2p_storage', 'emd_session_db_version', 'dashboard_widget_options', 'emd_inline_ent_list', 'emd_activated_plugins', 'secure_cookies', 'cookie_http_only', 'session_delete_batch_size', 'emd_inc_email_apps', 'emd_inline_entity_apps', 'wp_ticket_com_ent_map_list', 'wp_ticket_com_tools', 'wp_ticket_com_access_views', 'wp_ticket_com_tax_settings', 'wp_ticket_com_tracking_optin', 'wp_ticket_com_show_rateme_plugin_min', 'wp_ticket_com_ent_list', 'wp_ticket_com_activation_date', 'wp_ticket_com_tax_list', 'wp_ticket_com_rel_list', 'wp_ticket_com_shc_list', 'wp_ticket_com_misc_settings', 'wp_ticket_com_attr_list', 'wp_ticket_com_setup_pages_list', 'emd_license_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_autoinc';
DELETE FROM wp_options WHERE option_name LIKE '%_misc_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_ent_map_list';
DELETE FROM wp_options WHERE option_name LIKE '%_attr_list';
DELETE FROM wp_options WHERE option_name LIKE '%_cust_roles';
DELETE FROM wp_options WHERE option_name LIKE '%_user_shortcodes';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_attr_tax_list';
DELETE FROM wp_options WHERE option_name LIKE '%_tax_list';
DELETE FROM wp_options WHERE option_name LIKE '%_shc_list';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE '%_ent_list';
DELETE FROM wp_options WHERE option_name LIKE '%_notify_list';
DELETE FROM wp_options WHERE option_name LIKE '%_notify_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_list';
DELETE FROM wp_options WHERE option_name LIKE '%_comment_list';
DELETE FROM wp_options WHERE option_name LIKE '%_rel_list';
DELETE FROM wp_options WHERE option_name LIKE '%_tax_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_tools';
DELETE FROM wp_options WHERE option_name LIKE '%_add_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_limitby_auth_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_calendar';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_init_tax';
DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages';
DELETE FROM wp_options WHERE option_name LIKE '%_limitby_caps';
DELETE FROM wp_options WHERE option_name LIKE '%_access_views';
DELETE FROM wp_options WHERE option_name LIKE '%_widg_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_init_list';
DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_incoming_email';
DELETE FROM wp_options WHERE option_name LIKE '%_has_inline_ent';
DELETE FROM wp_options WHERE option_name LIKE '%_has_woocommerce';
DELETE FROM wp_options WHERE option_name LIKE '%_has_woocommerce_forms_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_edd';
DELETE FROM wp_options WHERE option_name LIKE '%_has_edd_forms_list';
DELETE FROM wp_options WHERE option_name LIKE '%_has_ldap';
DELETE FROM wp_options WHERE option_name LIKE '%_has_mailchimp';
DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice1';
DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice2';
DELETE FROM wp_options WHERE option_name LIKE '%_login_settings';
DELETE FROM wp_options WHERE option_name LIKE 'emd_form_id_%';
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE '%_ext_field_list';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_activate_redirect';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'emd_status', 'wpas_form_submitted_by');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'emd_ratings_average_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emd_ratings_average_%';

