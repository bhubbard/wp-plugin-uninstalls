<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsn-countries');
delete_site_option('fsn-countries');
delete_option('fsn-show-cart');
delete_site_option('fsn-show-cart');
delete_option('fsn-shipping-min');
delete_site_option('fsn-shipping-min');
delete_option('fsn-all-countries');
delete_site_option('fsn-all-countries');
delete_option('fsn-show-checkout');
delete_site_option('fsn-show-checkout');
delete_option('fsn-default-currency');
delete_site_option('fsn-default-currency');
delete_option('fsn-highlight-color');
delete_site_option('fsn-highlight-color');

