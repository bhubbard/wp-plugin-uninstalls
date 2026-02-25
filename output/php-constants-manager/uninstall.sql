-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phpcm_early_loading_enabled', 'phpcm_db_version', 'phpcm_db_error', 'phpcm_load_error', 'phpcm_admin_notice', 'phpcm_import_errors');

