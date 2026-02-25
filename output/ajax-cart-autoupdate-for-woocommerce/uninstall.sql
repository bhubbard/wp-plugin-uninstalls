-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acau_first_activate', 'acau_settings', 'active_sitewide_plugins', 'acau_dismiss_notice');

