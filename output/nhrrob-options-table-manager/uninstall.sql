-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nhrotm_auto_cleanup_enabled', 'nhrotm_history_retention_days');

