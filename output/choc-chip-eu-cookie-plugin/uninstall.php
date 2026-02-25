<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('choc_chip_eu_cookie_appearance');
delete_site_option('choc_chip_eu_cookie_appearance');
delete_option('choc_chip_eu_cookie_optin');
delete_site_option('choc_chip_eu_cookie_optin');

