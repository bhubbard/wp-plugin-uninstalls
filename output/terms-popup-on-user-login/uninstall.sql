-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpul_settings_term_modal_reset_info', 'tpul_settings_general_options', 'tpul_settings_term_modal_options', 'tpul_settings_remote_config_options', 'tpul_settings_term_modal_display_options', 'tpul_settings_term_modal_woo_options', 'tpul_addv_logging', 'tpul_admin_notices', 'tpul_log_db_version', 'tpul_terms_user_state_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tpul_user_accepted_terms', 'tpul_user_acc_for_this_session', 'tpul_last_user_action', 'tpul_user_accepted_terms_date', 'tpul_user_accepted_useragent', 'tpul_visitor_id', 'tpul_user_clientIP', 'tpul_user_location_coordinates');
DELETE FROM wp_usermeta WHERE meta_key IN ('tpul_user_accepted_terms', 'tpul_user_acc_for_this_session', 'tpul_last_user_action', 'tpul_user_accepted_terms_date', 'tpul_user_accepted_useragent', 'tpul_visitor_id', 'tpul_user_clientIP', 'tpul_user_location_coordinates');
DELETE FROM wp_termmeta WHERE meta_key IN ('tpul_user_accepted_terms', 'tpul_user_acc_for_this_session', 'tpul_last_user_action', 'tpul_user_accepted_terms_date', 'tpul_user_accepted_useragent', 'tpul_visitor_id', 'tpul_user_clientIP', 'tpul_user_location_coordinates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tpul_user_accepted_terms', 'tpul_user_acc_for_this_session', 'tpul_last_user_action', 'tpul_user_accepted_terms_date', 'tpul_user_accepted_useragent', 'tpul_visitor_id', 'tpul_user_clientIP', 'tpul_user_location_coordinates');

