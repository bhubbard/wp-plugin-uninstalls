-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmlcp_livecomm_bearer_token', 'tmlcp_livecomm_secret_detail', 'tmlcp_livecomm_user_detail', 'tmlcp_contact_forms', 'livecomm_default_phone_number', 'livecomm_default_contact_list', 'tmlcp_enable_plugin', 'tmlcp_enable_floating_plugin');
DELETE FROM wp_options WHERE option_name LIKE 'tmlcp_form_mapping_%';

