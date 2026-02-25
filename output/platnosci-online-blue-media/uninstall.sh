#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bluemedia_settings'
wp option delete 'bm_payment_methods_order'
wp option delete 'woocommerce_bluemedia_payment_gateway_settings'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'autopay_order_remote_status_path'
wp option delete 'bluemedia_activated'
wp option delete 'woocommerce_gateway_order'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_autopay_request_%' OR option_name LIKE '_site_transient_autopay_request_%'"
wp transient delete 'autopay_debug_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_autopay_audit_%' OR option_name LIKE '_site_transient_autopay_audit_%'"

# Clear Cron Jobs
wp cron event delete 'bm_cancel_failed_pending_order_after_one_hour'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autopay_test_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autopay_test_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autopay_test_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autopay_test_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_order_payment_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_order_payment_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_order_payment_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_order_payment_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_order_itn_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_order_itn_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_order_itn_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_order_itn_status'"
