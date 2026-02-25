#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hurryt_headline_moved_notice_dismissed'
wp option delete 'hurryt_leave_review_dismissed'
wp option delete 'hurryt_settings'
wp option delete 'hurrytimer_version'
wp option delete 'hurrytimer_custom_css'
wp option delete 'hurrytimer_upgraded_2_2_28'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_edit_address_page_id'
wp option delete 'woocommerce_view_order_page_id'
wp option delete 'woocommerce_terms_page_id'

# Delete Transients
wp transient delete 'hurryt_remind_review_notice'

# Clear Cron Jobs
wp cron event delete 'hurrytimer_evergreen_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
