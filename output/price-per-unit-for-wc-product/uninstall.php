<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppusunarc_prefix');
delete_site_option('ppusunarc_prefix');
delete_option('ppusunarc_suffix');
delete_site_option('ppusunarc_suffix');
delete_option('ppusunarc_add_row_css');
delete_site_option('ppusunarc_add_row_css');
delete_option('ppusunarc_custom_unit');
delete_site_option('ppusunarc_custom_unit');
delete_option('ppusunarc_cart_page');
delete_site_option('ppusunarc_cart_page');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

