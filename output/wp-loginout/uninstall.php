<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nab_menu_location');
delete_site_option('nab_menu_location');
delete_option('nab_ll_before');
delete_site_option('nab_ll_before');
delete_option('nab_ll_after');
delete_site_option('nab_ll_after');

