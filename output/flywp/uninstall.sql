-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flywp_email_settings', 'auto_update_plugins', 'update_themes', 'update_core');

