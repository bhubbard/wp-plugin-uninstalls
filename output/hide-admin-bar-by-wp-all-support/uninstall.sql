-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpas_admin_bar_settings', '_wpas_adminbar_activation_redirect');

