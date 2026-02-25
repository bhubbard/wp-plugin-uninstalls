<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sswc_show_on_checkout');
delete_site_option('sswc_show_on_checkout');
delete_option('sswc_image');
delete_site_option('sswc_image');
delete_option('sswc_embed');
delete_site_option('sswc_embed');
delete_option('sswc_show_on_cart');
delete_site_option('sswc_show_on_cart');
delete_option('sswc_show_on_product');
delete_site_option('sswc_show_on_product');
delete_option('sswc_show_on_account');
delete_site_option('sswc_show_on_account');

