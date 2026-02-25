-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('engageya_params_layout_type_id', 'engageya_params_opt', 'engageya_params_token', 'engageya_params_user_id');

