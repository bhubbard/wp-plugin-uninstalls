-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tims_nso_login_type', 'tims_nso_debug_log', 'tims_persistent_data_type', 'tims_nso_address', 'tims_nso_client_id', 'tims_nso_client_secret', 'tims_nso_match', 'tims_nso_create_account', 'tims_nso_default_role', 'tims_nso_group_link', 'tims_nso_default_group_link_role', 'tims_nso_redirect_url', 'tims_nso_login_button', 'tims_nso_login_button_text');

