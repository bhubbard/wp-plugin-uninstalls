<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MyWooCommerceShowroom_title');
delete_site_option('MyWooCommerceShowroom_title');
delete_option('MyWooCommerceShowroom_pics');
delete_site_option('MyWooCommerceShowroom_pics');
delete_option('MyWooCommerceShowroom_useMedia');
delete_site_option('MyWooCommerceShowroom_useMedia');
delete_option('MyWooCommerceShowroom_prod_nr');
delete_site_option('MyWooCommerceShowroom_prod_nr');
delete_option('MyWooCommerceShowroom_prod_cats');
delete_site_option('MyWooCommerceShowroom_prod_cats');
delete_option('MyWooCommerceShowroom_cat_terms');
delete_site_option('MyWooCommerceShowroom_cat_terms');

// Delete Transients
delete_transient('MyWooCommerceShowroom_notification');
delete_site_transient('MyWooCommerceShowroom_notification');

