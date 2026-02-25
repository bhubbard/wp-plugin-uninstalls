-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpho_saved_values', 'wpho_activated_on', 'wpho_deactivated_on');

