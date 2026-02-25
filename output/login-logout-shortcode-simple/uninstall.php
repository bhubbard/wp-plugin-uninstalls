<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LoginLogoutShortcodeSimple_Plugin_PageRedirect');
delete_site_option('LoginLogoutShortcodeSimple_Plugin_PageRedirect');
delete_option('LoginLogoutShortcodeSimple_Plugin_UsersCanRegister');
delete_site_option('LoginLogoutShortcodeSimple_Plugin_UsersCanRegister');
delete_option('LoginLogoutShortcodeSimple_Plugin_CanSeeSpecialData');
delete_site_option('LoginLogoutShortcodeSimple_Plugin_CanSeeSpecialData');

