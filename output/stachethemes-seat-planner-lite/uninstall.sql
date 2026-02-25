-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stachesepl_seat_selector_tooltip', 'stachesepl_dt_adjacent_months', 'stachesepl_enable_in_loop_button', 'stachesepl_compat_mode', 'stachesepl_compat_calc_totals', 'stachesepl_reserve_time', 'stachesepl_cart_redirect', 'stachesepl_cart_redirect_message', 'stachesepl_cart_redirect_message_text', 'stachesepl_cart_timer_enabled', 'stachesepl_accent_color', 'stachesepl_qr_code_enabled', 'stachesepl_auto_confirm_paid_orders', 'woocommerce_currency_pos', 'stacheseplite_notice_rate_timer');

