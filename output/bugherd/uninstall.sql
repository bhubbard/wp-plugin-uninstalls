-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bugherd_disable_query_params', 'bugherd_project_key', 'bugherd_enable_admin');

