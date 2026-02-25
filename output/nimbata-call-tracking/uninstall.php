<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nimbata_dni_id');
delete_site_option('nimbata_dni_id');
delete_option('nimbata_dni_sri');
delete_site_option('nimbata_dni_sri');

