#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leat_dashboard_page_id'
wp option delete 'leat_shop_uuid'
wp option delete 'leat_api_key'
wp option delete 'leat_auto_enroll_on_registration'
wp option delete 'leat_db_schema_version'
wp option delete 'leat_business_profile_uuid'
wp option delete 'leat_webhook_secret'
wp option delete 'leat_flush_rewrite_rules'
wp option delete 'leat_dashboard_endpoint_added'
wp option delete 'rewrite_rules'
wp option delete 'leat_logs'
wp option delete 'leat_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'leat_%'"
wp option delete 'piggy_api_key'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'leat_syncing_vouchers'
wp transient delete 'leat_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'leat_delayed_contact_sync'
wp cron event delete 'leat_daily_webhook_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leat_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leat_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leat_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leat_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leat_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leat_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leat_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leat_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leat_giftcard_program_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leat_giftcard_program_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leat_giftcard_program_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leat_giftcard_program_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leat_giftcard_use_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leat_giftcard_use_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leat_giftcard_use_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leat_giftcard_use_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leat_voucher_promotion_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leat_voucher_promotion_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leat_voucher_promotion_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leat_voucher_promotion_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leat_voucher_use_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leat_voucher_use_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leat_voucher_use_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leat_voucher_use_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leat_category_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leat_category_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leat_category_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leat_category_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leat_disable_product_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leat_disable_product_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leat_disable_product_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leat_disable_product_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leat_contact_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leat_contact_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leat_contact_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leat_contact_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
