-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'gdbcsettingsadminmodule-settings', 'gdbcwordpressadminmodule-settings', 'gdbcultimatememberadminmodule-settings', 'gdbcsubscriptionsadminmodule-settings', 'gdbcpopularformsadminmodule-settings', 'gdbc-blocked-attempts', 'jetpack_active_modules', 'update_plugins');

