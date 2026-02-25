-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jtzl_sw_deactivated_at', 'jtzl_sw_options', 'jtzl_sw_cdn_settings', 'jtzl_sw_log_settings', 'jtzl_sw_plugin_version', 'jtzl_sw_db_version', 'jtzl_sw_cache_version', 'jtzl_sw_version', 'jtzl_sw_build_missing_notice', 'jtzl_sw_deactivated', 'jtzl_sw_flush_rewrite_rules', 'jtzl_sw_reregister_sw');

