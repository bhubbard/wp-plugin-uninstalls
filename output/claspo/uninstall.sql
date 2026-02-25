-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('claspo_script_id', 'claspo_script_code', 'claspo_plugin_activated', 'claspo_api_error', 'claspo_success_message');

