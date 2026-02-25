-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CF7spreadsheets_api_file');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('CF7spreadsheets_option_url', 'CF7spreadsheets_option_id', 'CF7spreadsheets_option_enabled', 'CF7spreadsheets_option_mail', 'CF7spreadsheets_output_tags', 'CF7spreadsheets_output_types', '_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('CF7spreadsheets_option_url', 'CF7spreadsheets_option_id', 'CF7spreadsheets_option_enabled', 'CF7spreadsheets_option_mail', 'CF7spreadsheets_output_tags', 'CF7spreadsheets_output_types', '_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('CF7spreadsheets_option_url', 'CF7spreadsheets_option_id', 'CF7spreadsheets_option_enabled', 'CF7spreadsheets_option_mail', 'CF7spreadsheets_output_tags', 'CF7spreadsheets_output_types', '_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('CF7spreadsheets_option_url', 'CF7spreadsheets_option_id', 'CF7spreadsheets_option_enabled', 'CF7spreadsheets_option_mail', 'CF7spreadsheets_output_tags', 'CF7spreadsheets_output_types', '_form');

