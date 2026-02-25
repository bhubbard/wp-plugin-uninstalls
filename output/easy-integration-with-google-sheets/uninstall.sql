-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eings_gsheet_files', 'eings_token_verify', 'eings_settings', 'eings_access_token', 'eings_account_info', 'eings_saved_integrations', 'eings_gsheet_headers', 'eings_gsheet_tabs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eings_cf7_form_settings', 'eings_field_map_keys', '_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('eings_cf7_form_settings', 'eings_field_map_keys', '_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('eings_cf7_form_settings', 'eings_field_map_keys', '_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eings_cf7_form_settings', 'eings_field_map_keys', '_form');

