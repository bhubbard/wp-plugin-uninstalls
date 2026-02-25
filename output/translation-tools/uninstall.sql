-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('translation_tools_settings', 'update_plugins', 'update_themes', 'update_core');

