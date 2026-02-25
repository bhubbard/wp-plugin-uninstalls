-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('less_compiler', 'less', 'less_vars', 'less_variables', 'less_variables_defaults', 'settings_errors');

