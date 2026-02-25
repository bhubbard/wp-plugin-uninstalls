-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avangpress_flash_messages', 'avangpress', 'avangpress_mail_list_ids', 'avangpress_default_form_id', 'avangpress_form_stylesheets', 'avangpress_groupings_map', 'avangpress_integrations', 'avangpress_api_key_notice_dismissed', 'update_plugins', 'avangpress_list_counts');
DELETE FROM wp_options WHERE option_name LIKE 'avangpress_mail_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('avangpress_settings', 'avangpress_optin');
DELETE FROM wp_usermeta WHERE meta_key IN ('avangpress_settings', 'avangpress_optin');
DELETE FROM wp_termmeta WHERE meta_key IN ('avangpress_settings', 'avangpress_optin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('avangpress_settings', 'avangpress_optin');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'text_%';

