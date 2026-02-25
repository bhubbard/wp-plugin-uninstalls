<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stachesepl_seat_selector_tooltip');
delete_site_option('stachesepl_seat_selector_tooltip');
delete_option('stachesepl_dt_adjacent_months');
delete_site_option('stachesepl_dt_adjacent_months');
delete_option('stachesepl_enable_in_loop_button');
delete_site_option('stachesepl_enable_in_loop_button');
delete_option('stachesepl_compat_mode');
delete_site_option('stachesepl_compat_mode');
delete_option('stachesepl_compat_calc_totals');
delete_site_option('stachesepl_compat_calc_totals');
delete_option('stachesepl_reserve_time');
delete_site_option('stachesepl_reserve_time');
delete_option('stachesepl_cart_redirect');
delete_site_option('stachesepl_cart_redirect');
delete_option('stachesepl_cart_redirect_message');
delete_site_option('stachesepl_cart_redirect_message');
delete_option('stachesepl_cart_redirect_message_text');
delete_site_option('stachesepl_cart_redirect_message_text');
delete_option('stachesepl_cart_timer_enabled');
delete_site_option('stachesepl_cart_timer_enabled');
delete_option('stachesepl_accent_color');
delete_site_option('stachesepl_accent_color');
delete_option('stachesepl_qr_code_enabled');
delete_site_option('stachesepl_qr_code_enabled');
delete_option('stachesepl_auto_confirm_paid_orders');
delete_site_option('stachesepl_auto_confirm_paid_orders');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');

// Delete Transients
delete_transient('stacheseplite_notice_rate_timer');
delete_site_transient('stacheseplite_notice_rate_timer');

