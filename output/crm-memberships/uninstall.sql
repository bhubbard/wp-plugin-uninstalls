-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ntzcrm_log_redirect_url', 'ntzcrm_login_url', 'ntzcrmEnableTosendWelcomeMailOnUserCreation', 'ntzcrmEnableTosendCreatePasswordMailOnUserCreation', 'ntzcrm_opt_default_navlinks', 'ntzcrm_enable_partial_view', 'ntzcrm_subscribe_button_link', 'ntzcrm_enable_partial_text_limit', 'ntzcrm_logout_redirect_url', 'is_actived_ntzcrm', 'ntzcrm_enable_log', 'ntzcrm_api_token', 'ntzcrm_api_key', 'ntzcrm_login_partial_view_text', 'ntzcrm_subscribe_partial_view_text', 'ntzcrm_logo', 'ntzcrm_publ_welcome_title', 'ntzcrm_publ_welcome_text', 'ntzcrm_service_url', 'ntzcrm_disabled_post_tracking', 'ntzcrm_welcome_mail_template', 'ntzcrmCreatePasswordMailTemplate', 'ntzcrm_resetpassword_mail_template', 'ntzcrm_enable_change_password', 'ntzcrm_user', 'ntzcrm_password', 'ntzcrm_infu_form_url', 'ntzcrm_changepassword_url', 'ntzcrm_infu_form_id', 'cache_ntzcrm_tag', 'cache_ntzcrm_ifs_tag_map', 'cache_ntzcrm_tag_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'firstName', 'ntzcrm_user_tag_sync', 'last_name', 'ntzcrm_contact_id', 'phone', 'is_fronted_publication', 'is_ntzcrm_publication', 'is_ntzcrm_login_required', 'all_access', 'ntzcrm_access_icon', 'ntzcrm_noaccess_icon', '_ntzcrm_user_tag_ids', 'is_crm-memberships_login_required', 'crm-memberships_access_icon', 'crm-memberships_noaccess_icon', '_ntzcrm_user_contact_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'firstName', 'ntzcrm_user_tag_sync', 'last_name', 'ntzcrm_contact_id', 'phone', 'is_fronted_publication', 'is_ntzcrm_publication', 'is_ntzcrm_login_required', 'all_access', 'ntzcrm_access_icon', 'ntzcrm_noaccess_icon', '_ntzcrm_user_tag_ids', 'is_crm-memberships_login_required', 'crm-memberships_access_icon', 'crm-memberships_noaccess_icon', '_ntzcrm_user_contact_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'firstName', 'ntzcrm_user_tag_sync', 'last_name', 'ntzcrm_contact_id', 'phone', 'is_fronted_publication', 'is_ntzcrm_publication', 'is_ntzcrm_login_required', 'all_access', 'ntzcrm_access_icon', 'ntzcrm_noaccess_icon', '_ntzcrm_user_tag_ids', 'is_crm-memberships_login_required', 'crm-memberships_access_icon', 'crm-memberships_noaccess_icon', '_ntzcrm_user_contact_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'firstName', 'ntzcrm_user_tag_sync', 'last_name', 'ntzcrm_contact_id', 'phone', 'is_fronted_publication', 'is_ntzcrm_publication', 'is_ntzcrm_login_required', 'all_access', 'ntzcrm_access_icon', 'ntzcrm_noaccess_icon', '_ntzcrm_user_tag_ids', 'is_crm-memberships_login_required', 'crm-memberships_access_icon', 'crm-memberships_noaccess_icon', '_ntzcrm_user_contact_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%login_required';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%login_required';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%login_required';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%login_required';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%access_icon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%access_icon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%access_icon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%access_icon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%noaccess_icon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%noaccess_icon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%noaccess_icon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%noaccess_icon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%publication';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%publication';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%publication';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%publication';

