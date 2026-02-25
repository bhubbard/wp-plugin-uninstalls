<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spga_el_installed_at');
delete_site_option('spga_el_installed_at');
delete_option('spga_el_version');
delete_site_option('spga_el_version');
delete_option('spga_el_license');
delete_site_option('spga_el_license');

