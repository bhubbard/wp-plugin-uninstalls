#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_Zoodpay_configuration'
wp option delete '_Zoodpay_Market_code_'
wp option delete '_zoodpay_success'
wp option delete '_zoodpay_failure'
wp option delete 'woocommerce_zoodpay_settings'
wp option delete '_ZPI_min_value_'
wp option delete '_ZPI_max_value_'
wp option delete '_PAD_min_value_'
wp option delete '_PAD_max_value_'
wp option delete '_Zoodpay_config_status_'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_min_value_'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_value_'"
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_request_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_request_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_request_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_request_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zoodpay_failed_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zoodpay_failed_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zoodpay_failed_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zoodpay_failed_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zoodpay_refund_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zoodpay_refund_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zoodpay_refund_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zoodpay_refund_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'declined_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'declined_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'declined_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'declined_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_declined_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_declined_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_declined_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_declined_amount'"
