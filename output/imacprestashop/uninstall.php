<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imacPrestashop_options');
delete_site_option('imacPrestashop_options');
delete_option('imacprestashop_options');
delete_site_option('imacprestashop_options');

