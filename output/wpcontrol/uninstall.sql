-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravatar_substitute', 'wpcontrol_settings', 'wpcontrol_current_version', '_wpcontrol_activation_redirect', 'wpcontrol-admin-notice-activation');

