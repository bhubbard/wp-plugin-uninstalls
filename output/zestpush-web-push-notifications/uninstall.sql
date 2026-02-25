-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_option', 'zest_status', 'zest_plan', 'zest_metastatus', 'zest_segmentstatus', 'zest_serviceworker', 'zest_init_status', 'activate_zest', 'zest_active_api', 'zest_user_id', 'zest_site_id', 'zest_endpoint', 'zest_domain', 'zestpush_push_response');

