-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtmsk_enable_frontend', 'gtmsk_enable_backend', 'gtmsk_activation_notice');

