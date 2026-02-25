-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpu_update_blocked_plugins', '_site_transient_update_plugins');

