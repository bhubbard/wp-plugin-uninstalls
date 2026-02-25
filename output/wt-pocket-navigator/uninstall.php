<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtpn_pocket_nav_settings');
delete_site_option('wtpn_pocket_nav_settings');

