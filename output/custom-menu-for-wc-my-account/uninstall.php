<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_custom_product_menu_list');
delete_site_option('wc_custom_product_menu_list');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

