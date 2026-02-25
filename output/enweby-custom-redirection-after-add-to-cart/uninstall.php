<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('enweby_custom_redirection_after_addtocart_to_page');
delete_site_option('enweby_custom_redirection_after_addtocart_to_page');

