-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('silr_db_version', 'silr_exclude_admins', 'silr_enable_redirect', 'silr_redirect_url', 'silr_retention_hours', 'silr_logs_per_page');

