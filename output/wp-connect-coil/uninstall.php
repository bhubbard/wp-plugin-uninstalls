<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_coil_payment_pointer_trtr');
delete_site_option('_coil_payment_pointer_trtr');

