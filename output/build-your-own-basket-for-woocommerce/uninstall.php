<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BYOBFW_build_your_own_basket_activation_error');
delete_site_option('BYOBFW_build_your_own_basket_activation_error');
delete_option('BYOBFW_build_your_own_basket_product_id');
delete_site_option('BYOBFW_build_your_own_basket_product_id');
delete_option('byobfw_db_version');
delete_site_option('byobfw_db_version');

