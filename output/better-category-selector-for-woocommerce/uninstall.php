<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_product_cat');
delete_site_option('default_product_cat');
delete_option('HD_BCS_db_version');
delete_site_option('HD_BCS_db_version');
delete_option('hd_bcs_options');
delete_site_option('hd_bcs_options');

