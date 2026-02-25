-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Plugin', 'wp_sonetel_accountId', 'wp_sonetel_activated', 'wp_sonetel_bar_activated', 'wp_sonetel_window_close', 'wp_sonetel_window_reload');

