<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OID');
delete_site_option('OID');
delete_option('EIN');
delete_site_option('EIN');

