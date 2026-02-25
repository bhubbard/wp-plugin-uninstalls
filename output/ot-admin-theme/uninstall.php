<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ot-header-texts');
delete_site_option('ot-header-texts');
delete_option('ot-admin-menu-color');
delete_site_option('ot-admin-menu-color');
delete_option('ot-admin-menu-active-color');
delete_site_option('ot-admin-menu-active-color');
delete_option('ot-admin-menu-active-background');
delete_site_option('ot-admin-menu-active-background');

