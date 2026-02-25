<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_rpid');
delete_site_option('_rpid');
delete_option('_datamax');
delete_site_option('_datamax');
delete_option('_datasort');
delete_site_option('_datasort');
delete_option('_multi');
delete_site_option('_multi');

