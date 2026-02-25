<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('friendlyFunctionsForWelcartData');
delete_site_option('friendlyFunctionsForWelcartData');
delete_option('friendlyFunctionsForWelcartHideFaxNumCss');
delete_site_option('friendlyFunctionsForWelcartHideFaxNumCss');

