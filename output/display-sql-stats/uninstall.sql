-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dss_title_array', 'dss_type_array', 'dss_switch_array', 'dss_sql_string_array', 'dss_debug', 'dss_roles_array', 'dss_store_deleted', 'dss_width_default', 'dss_height_default', 'dss_notepad', 'dss_number_of_sql_statements');

