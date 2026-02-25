<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rednaoeasycalculationforms_dont_show_again');
delete_site_option('rednaoeasycalculationforms_dont_show_again');

