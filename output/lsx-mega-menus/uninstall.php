<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsx-mega-menus-version');
delete_site_option('lsx-mega-menus-version');
delete_option('LSXMM_DATA');
delete_site_option('LSXMM_DATA');

