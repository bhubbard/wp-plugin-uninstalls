<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift4shop_siteurl');
delete_site_option('shift4shop_siteurl');
delete_option('shift4shop_currency');
delete_site_option('shift4shop_currency');

