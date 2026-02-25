#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgrpw_activation_time'
wp option delete 'pgrpw_review_notice_hide_v1'
wp option delete 'pgrpw_next_show_time'

# Delete Transients
wp transient delete 'easy_razorpay_for_woocommerce_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_razorpay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_razorpay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_razorpay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_razorpay_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_razorpay_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_razorpay_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_razorpay_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_razorpay_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_razorpay_payment_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_razorpay_payment_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_razorpay_payment_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_razorpay_payment_verified'"
