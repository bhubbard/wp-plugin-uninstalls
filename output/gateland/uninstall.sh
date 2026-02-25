#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gateland_%'"
wp option delete 'gateland_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gateland_dismiss_notice_%'"
wp option delete 'gateland_dismiss_notice_all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gateland_cf7_%'"
wp option delete 'learndash_settings_gateland'
wp option delete 'gateland_mycred_title'
wp option delete 'pmpro_gateland_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pmpro_%'"
wp option delete 'sliced_payments'
wp option delete 'woocommerce_woo_wallet_endpoint'
wp option delete 'nabik_sms'

# Delete Transients
wp transient delete 'gateland_update_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ld_gateland_user_hash_%' OR option_name LIKE '_site_transient_ld_gateland_user_hash_%'"
wp transient delete 'gateland_active_gateways'
wp transient delete 'nabik_sms_credit'

# Clear Cron Jobs
wp cron event delete 'gateland_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sliced_gateland_authority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sliced_gateland_authority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sliced_gateland_authority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sliced_gateland_authority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sliced_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sliced_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sliced_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sliced_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_current_woo_wallet_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coupon_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coupon_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coupon_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coupon_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpuf_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpuf_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpuf_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpuf_form_id'"
