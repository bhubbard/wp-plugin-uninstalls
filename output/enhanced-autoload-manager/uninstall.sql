-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edal_disabled_autoloads', 'edal_dismissed_warnings', 'edal_locked_autoloads', 'edal_total_autoload_size', 'edal_autoload_cache');

