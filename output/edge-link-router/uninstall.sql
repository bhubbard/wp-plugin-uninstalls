-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfelr_cf_health', 'cfelr_sample_link_created', 'cfelr_plugin_version', 'cfelr_edge_enabled', 'cfelr_reconcile_log', 'cfelr_settings', 'cfelr_cf_token_encrypted', 'cfelr_last_publish', 'cfelr_cf_route_id', 'cfelr_form_errors', 'cfelr_form_data', 'cfelr_import_error', 'cfelr_import_results', 'cfelr_edge_publish_debounce');

