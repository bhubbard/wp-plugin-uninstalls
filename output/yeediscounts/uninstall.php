<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yk_dd_apply_product_discount_to');
delete_site_option('yk_dd_apply_product_discount_to');
delete_option('yk_dd_show_bulk_discount_table');
delete_site_option('yk_dd_show_bulk_discount_table');
delete_option('yk_dd_position_to_show_bulk_table');
delete_site_option('yk_dd_position_to_show_bulk_table');
delete_option('yk_dd_position_to_show_discount_bar');
delete_site_option('yk_dd_position_to_show_discount_bar');
delete_option('yk_dd_show_cart_notifications');
delete_site_option('yk_dd_show_cart_notifications');
delete_option('yk_dd_disable_coupon_when_rule_applied');
delete_site_option('yk_dd_disable_coupon_when_rule_applied');
delete_option('yk_dd_cart_notification_text');
delete_site_option('yk_dd_cart_notification_text');
delete_option('yk_dd_free_shipping_method_title');
delete_site_option('yk_dd_free_shipping_method_title');
delete_option('yk_dd_show_discounted_price');
delete_site_option('yk_dd_show_discounted_price');
delete_option('yk_dd_show_discounted_price_pages');
delete_site_option('yk_dd_show_discounted_price_pages');
delete_option('yk_dd_show_strikeout_on_cart_page');
delete_site_option('yk_dd_show_strikeout_on_cart_page');
delete_option('yk_dd_show_on_sale_badge');
delete_site_option('yk_dd_show_on_sale_badge');
delete_option('yk_dd_customize_sale_badge');
delete_site_option('yk_dd_customize_sale_badge');
delete_option('yk_dd_force_override_sale_badge');
delete_site_option('yk_dd_force_override_sale_badge');
delete_option('yk_dd_sale_badge_text');
delete_site_option('yk_dd_sale_badge_text');
delete_option('yk_dd_show_percentage_in_sale_badge');
delete_site_option('yk_dd_show_percentage_in_sale_badge');

