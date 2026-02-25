-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MM_And_SUC_Free_options', 'maintenance_mode_enabled');

