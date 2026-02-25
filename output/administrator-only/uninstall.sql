-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admon_delete_data', 'admon_front_end', 'admon_front_end_link', 'admon_rest_api', 'admon_rest_api_link', 'admon_excluded_pages', 'admon_excluded_routes');

