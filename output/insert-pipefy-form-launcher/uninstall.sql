-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipfl_plugin_variable_form', 'ipfl_plugin_variable_color', 'ipfl_plugin_variable_name', 'ipfl_plugin_variable_fullpage');

