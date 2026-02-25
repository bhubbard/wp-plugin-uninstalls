<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('diving_calculators_activation_time');
delete_site_option('diving_calculators_activation_time');

