<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CrazyRocketPageFilterMode');
delete_site_option('CrazyRocketPageFilterMode');
delete_option('CrazyRocketPageFilterList');
delete_site_option('CrazyRocketPageFilterList');
delete_option('CrazyRocketApplicationID');
delete_site_option('CrazyRocketApplicationID');
delete_option('CrazyRocketHideInDashboard');
delete_site_option('CrazyRocketHideInDashboard');
delete_option('CrazyRocketHideOnMobile');
delete_site_option('CrazyRocketHideOnMobile');
delete_option('CrazyRocketAPISecretKey');
delete_site_option('CrazyRocketAPISecretKey');
delete_option('CrazyRocketLanguage');
delete_site_option('CrazyRocketLanguage');

