#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc4jp_admin_footer_text_rated'
wp option delete 'wc4jp-postofficebank'
wp option delete 'wc4jp-bankjp'
wp option delete 'wc4jp-atstore'
wp option delete 'wc4jp-cod2'
wp option delete 'jp4wc_2025031pr_hide_notice'
wp option delete 'jp4wc_hide_security_check_notice'
wp option delete 'jp4wc_security_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'jp4wc_hide_paypal_deprecation_notice'
wp option delete 'wc4jp-paypal'
wp option delete 'jp4wc_hide_ecbuddy_notice'
wp option delete 'active_sitewide_plugins'
wp option delete 'jetpack_options'
wp option delete 'ms_manual_whitelist'
wp option delete 'wc4jp_time_zone_details'
wp option delete 'wc4jp-delivery-date'
wp option delete 'wc4jp-delivery-date-required'
wp option delete 'wc4jp-delivery-time-zone'
wp option delete 'wc4jp-delivery-time-zone-required'
wp option delete 'wc4jp-unspecified-date'
wp option delete 'wc4jp-delivery-deadline'
wp option delete 'wc4jp-start-date'
wp option delete 'wc4jp-reception-period'
wp option delete 'wc4jp-holiday-start-date'
wp option delete 'wc4jp-holiday-end-date'
wp option delete 'wc4jp-day-of-week'
wp option delete 'wc4jp-unspecified-time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc4jp-%'"
wp option delete 'wc4jp-yomigana'
wp option delete 'wc4jp-yomigana-required'
wp option delete 'woocommerce_atstore_settings'
wp option delete 'woocommerce_bankjp_settings'
wp option delete 'woocommerce_cod2_settings'
wp option delete 'woocommerce_postofficebank_settings'
wp option delete 'wc4jp-company-name'
wp option delete 'wc4jp-honorific-suffix'
wp option delete 'wc4jp-no-ja'
wp option delete 'wc4jp-yahoo-app-id'
wp option delete 'wc4jp-zip2address'
wp option delete 'wc4jp-affiliate-a8'
wp option delete 'wc4jp-affiliate-felmat'
wp option delete 'wc4jp-affiliate-a8-test'
wp option delete 'wc4jp-affiliate-a8-pid'
wp option delete 'wc4jp-affiliate-felmat-pid'
wp option delete 'woocommerce_cod_fees'
wp option delete 'jp4wc_tax_class_for_cod'
wp option delete 'woocommerce_default_gateway'
wp option delete 'woocommerce_cod_settings'
wp option delete 'wc4jp-custom-email-customer-name'
wp option delete 'wc4jp-date-format'
wp option delete 'wc4jp-delivery-notification-email'
wp option delete 'wc4jp-free-shipping'
wp option delete 'jp4wc_version'
wp option delete 'jp4wc-first-installing'
wp option delete 'paidy_do_activation_redirect'
wp option delete 'wc4jp-tracking'
wp option delete 'jp4wc_tracker_last_send'
wp option delete 'woocommerce_woocommerce_payments_settings'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_file_download_method'
wp option delete 'woocommerce_downloads_require_login'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_use_db_transactions_for_custom_orders_table_data_sync'
wp option delete 'woocommerce_db_transactions_isolation_level_for_custom_orders_table_data_sync'
wp option delete 'woocommerce_show_marketplace_suggestions'
wp option delete 'pickup_location_pickup_locations'
wp option delete 'woocommerce_mobile_app_usage'
wp option delete 'wc4jp-billing_postcode'
wp option delete 'wc4jp-billing_state'
wp option delete 'wc4jp-billing_city'
wp option delete 'wc4jp-billing_address_1'
wp option delete 'wc4jp-billing_address_2'
wp option delete 'wc4jp-billing_phone'
wp option delete 'woocommerce_bankjp_accounts'
wp option delete 'wc_paidy_show_ssl_notice'
wp option delete 'wc_paidy_show_curl_notice'
wp option delete 'woocommerce_paidy_settings'
wp option delete 'wc_paidy_show_pr_notice'
wp option delete 'wc-paygent-paidy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_paidy_on_boarding_settings'
wp option delete 'paidy_site_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_%'"
wp option delete 'wc_paidy_apply_notice_2'
wp option delete 'wc_paidy_apply_notice_3'
wp option delete 'wc_paidy_apply_notice_99'
wp option delete 'paidy_received_data'
wp option delete 'received_data'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_terms_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"
wp option delete 'woocommerce_ppcp-oxxo-gateway_settings'
wp option delete 'woocommerce_ppcp-pay-upon-invoice-gateway_settings'
wp option delete 'ppcp-request-ids'
wp option delete 'wc4jp-jp4wc-paypal'
wp option delete 'woocommerce-ppcp-version'
wp option delete 'woocommerce_postofficebankjp_accounts'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_postofficebankjp_settings'
wp option delete 'woocommerce_atstorejp_settings'
wp option delete 'woocommerce_cod_extra_charge_name'
wp option delete 'woocommerce_cod_extra_charge_amount'
wp option delete 'woocommerce_cod_extra_charge_max_cart_value'
wp option delete 'woocommerce_cod_extra_charge_calc_taxes'

# Delete Transients
wp transient delete 'jp4wc_first_installing'
wp transient delete 'jp4wc_installing'

# Clear Cron Jobs
wp cron event delete 'jp4wc_tracker_send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price_string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_yomigana_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_yomigana_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_yomigana_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_yomigana_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_yomigana_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_yomigana_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_yomigana_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_yomigana_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_token_id'"
