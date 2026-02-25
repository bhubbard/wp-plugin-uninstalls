-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adrm_comments_module_enabled', 'wp_statuses', 'adrm_statuses', 'adrm_global_settings', 'ADRM_DB_VERSION');

