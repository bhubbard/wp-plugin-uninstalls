<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mod_hb');
delete_site_option('mod_hb');
delete_option('wpshopgermany_installed');
delete_site_option('wpshopgermany_installed');

