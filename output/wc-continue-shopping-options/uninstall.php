<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('wc_continue_shopping_section_url');
delete_site_option('wc_continue_shopping_section_url');
delete_option('custom_link_for_continue');
delete_site_option('custom_link_for_continue');

