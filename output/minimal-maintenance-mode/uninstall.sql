-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintenance_mode', 'maintenance_mode_secret_phrase', 'maintenance_mode_message', 'maintenance_mode_heading');

