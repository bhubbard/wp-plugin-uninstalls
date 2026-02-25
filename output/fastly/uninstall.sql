-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fastly-schema-version', 'fastly-settings-general', 'fastly-settings-advanced', 'fastly-settings-io', 'fastly-settings-webhooks', 'fastly_api_hostname', 'fastly_api_key', 'fastly_service_id', 'fastly_log_purges', 'fastly_vcl_version');

