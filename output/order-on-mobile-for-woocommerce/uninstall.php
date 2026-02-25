<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woow_whatsapp_number');
delete_site_option('woow_whatsapp_number');
delete_option('woow_show_after');
delete_site_option('woow_show_after');
delete_option('woow_rev_notice_hide');
delete_site_option('woow_rev_notice_hide');
delete_option('woow_show_on_shop_single');
delete_site_option('woow_show_on_shop_single');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woow_custom_message');
delete_site_option('woow_custom_message');
delete_option('woow_hide_add_to_cart');
delete_site_option('woow_hide_add_to_cart');
delete_option('woow_hide_proceed_to_checkout');
delete_site_option('woow_hide_proceed_to_checkout');

