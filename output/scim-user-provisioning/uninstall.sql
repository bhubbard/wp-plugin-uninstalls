-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msup_scim_show_attribute', 'msup_scim_test_config_attrs', 'msup_scim_up_host_name', 'msup_scim_up_message', 'msup_scim_idp_name', 'msup_scim_up_bearer_token', 'msup_scim_up_admin_email', 'msup_scim_up_admin_phone', 'msup_scim_up_error_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('msup_scim_user_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('msup_scim_user_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('msup_scim_user_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('msup_scim_user_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

