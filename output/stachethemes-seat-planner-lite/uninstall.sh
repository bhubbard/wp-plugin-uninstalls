#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stachesepl_seat_selector_tooltip'
wp option delete 'stachesepl_dt_adjacent_months'
wp option delete 'stachesepl_enable_in_loop_button'
wp option delete 'stachesepl_compat_mode'
wp option delete 'stachesepl_compat_calc_totals'
wp option delete 'stachesepl_reserve_time'
wp option delete 'stachesepl_cart_redirect'
wp option delete 'stachesepl_cart_redirect_message'
wp option delete 'stachesepl_cart_redirect_message_text'
wp option delete 'stachesepl_cart_timer_enabled'
wp option delete 'stachesepl_accent_color'
wp option delete 'stachesepl_qr_code_enabled'
wp option delete 'stachesepl_auto_confirm_paid_orders'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'stacheseplite_notice_rate_timer'

