-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ob_campayn_apikey', 'campayn_forms_table', 'ob_campayn_list', 'ob_campayn_enabled', 'ob_campayn_text', 'campayn_dbversion');

