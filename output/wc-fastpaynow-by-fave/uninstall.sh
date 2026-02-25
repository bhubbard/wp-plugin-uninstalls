#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fastpay_wc_unique_site_id'
wp option delete 'wc_fastpay_sandbox_tab'
wp option delete 'wc_fastpay_skip_email_tab'
wp option delete 'woocommerce_fastpaynow_by_fave_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fastpay_wc_order_payment_url_%' OR option_name LIKE '_site_transient_fastpay_wc_order_payment_url_%'"

# Clear Cron Jobs
wp cron event delete 'fastpay_wc_check_transaction_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fastpay_wc_is_new_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fastpay_wc_is_new_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fastpay_wc_is_new_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fastpay_wc_is_new_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fastpay_omni_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fastpay_omni_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fastpay_omni_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fastpay_omni_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fastpay_wc_omni_reference_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fastpay_wc_omni_reference_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fastpay_wc_omni_reference_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fastpay_wc_omni_reference_suffix'"
