<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('idEmpresa');
delete_site_option('idEmpresa');
delete_option('idFormNumber');
delete_site_option('idFormNumber');

