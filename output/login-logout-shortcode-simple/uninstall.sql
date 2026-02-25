-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LoginLogoutShortcodeSimple_Plugin_PageRedirect', 'LoginLogoutShortcodeSimple_Plugin_UsersCanRegister', 'LoginLogoutShortcodeSimple_Plugin_CanSeeSpecialData');

