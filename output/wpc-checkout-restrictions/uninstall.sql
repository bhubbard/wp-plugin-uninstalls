-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpccr_settings', 'wpccr_rules', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpccr_%';

