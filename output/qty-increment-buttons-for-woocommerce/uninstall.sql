-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qib_dismiss_notice', 'qib_first_activate', 'qib_settingz', 'active_sitewide_plugins');

