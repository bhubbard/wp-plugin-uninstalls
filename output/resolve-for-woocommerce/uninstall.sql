-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resolve_plugins_check_required');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

