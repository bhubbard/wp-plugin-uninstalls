-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sssm_version', 'sssm_step3_hidden', 'sssm_step3', 'sssm_step4', 'sssm_skip_activation', 'sssm_step5', 'sssm_step6', 'sssm_step1', 'sssm_is_cloned_setting', 'sssm_step2', 'version', 'spiral_member_login', 'spiral_secure_session_manager', 'sssm_authentication_key', 'sssm_url', 'sssm_is_blank_page', 'sml_is_setup', 'sssm_is_setup', 'sssm_url_api_mode', 'sssm_session_id', 'sssm_plugin_install_date', 'ssp_activate_step', 'ssp_activate_screen', 'is_setup', 'sssm_activation_error', 'sssm_login_error', 'sssm_regenerate_page_message', 'sssm_clear_cache_message');
DELETE FROM wp_options WHERE option_name LIKE 'sssm_session_expires_%';
DELETE FROM wp_options WHERE option_name LIKE 'sssm_session_%';
DELETE FROM wp_options WHERE option_name LIKE 'sssm_auth_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('soarsomngat', '_sssm_action', 'spiral-s-member-page');
DELETE FROM wp_usermeta WHERE meta_key IN ('soarsomngat', '_sssm_action', 'spiral-s-member-page');
DELETE FROM wp_termmeta WHERE meta_key IN ('soarsomngat', '_sssm_action', 'spiral-s-member-page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('soarsomngat', '_sssm_action', 'spiral-s-member-page');

