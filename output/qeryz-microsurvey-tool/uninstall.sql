-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qeryz_code', 'qeryz_checkbox', 'qeryz_form_checkbox', 'qeryz-form-identity', 'qeryz_id', 'qeryz_username', 'qeryz_password', 'QeryzIdentity', 'qeryz_group');

