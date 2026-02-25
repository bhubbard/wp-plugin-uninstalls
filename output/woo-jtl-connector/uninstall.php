<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jtlconnector_use_deliverytime_calc');
delete_site_option('jtlconnector_use_deliverytime_calc');

