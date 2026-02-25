-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gelo_ai_license_key', 'gelo_ai_installed_plugins');

