<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basket_basket');
delete_site_option('basket_basket');
delete_option('basket_token');
delete_site_option('basket_token');
delete_option('basketin_armor_mode');
delete_site_option('basketin_armor_mode');

