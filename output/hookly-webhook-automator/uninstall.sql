-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hookly_version', 'hookly_db_version', 'hookly_enable_async', 'hookly_log_retention_days', 'hookly_default_timeout', 'hookly_admin_notices');

