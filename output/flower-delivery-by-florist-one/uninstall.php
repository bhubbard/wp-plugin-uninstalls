<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('florist-one-flower-delivery');
delete_site_option('florist-one-flower-delivery');
delete_option('fhw-solutions-obituaries_1');
delete_site_option('fhw-solutions-obituaries_1');

