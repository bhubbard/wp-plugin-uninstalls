<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('calculatornet_bmi_calculator');
delete_site_option('calculatornet_bmi_calculator');

