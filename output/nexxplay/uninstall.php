<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nxp_domain');
delete_site_option('nxp_domain');
delete_option('nxp_key');
delete_site_option('nxp_key');
delete_option('nxp_listview');
delete_site_option('nxp_listview');
delete_option('nxp_embedhost');
delete_site_option('nxp_embedhost');

