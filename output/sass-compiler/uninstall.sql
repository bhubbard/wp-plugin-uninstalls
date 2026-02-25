-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sass_variables_defaults', 'sass_compiler_cache', 'settings_errors');

