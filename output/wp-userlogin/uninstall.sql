-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpul_settings', 'set_checkbox', 'redirect', 'redirect_out', 'welcome', 'use_stylesheet', 'set_nonlog', 'set_log', '_site_transient_update_core', '_site_transient_update_plugins');

