#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'wc_stripe_show_customization_notice'
wp option delete 'wc_stripe_show_optimized_checkout_notice'
wp option delete 'wc_stripe_show_bnpl_promotion_banner'
wp option delete 'wc_stripe_show_oc_promotion_banner'
wp option delete 'wc_stripe_show_style_notice'
wp option delete 'wc_stripe_show_ssl_notice'
wp option delete 'wc_stripe_show_keys_notice'
wp option delete 'wc_stripe_show_3ds_notice'
wp option delete 'wc_stripe_show_phpver_notice'
wp option delete 'wc_stripe_show_wcver_notice'
wp option delete 'wc_stripe_show_curl_notice'
wp option delete 'wc_stripe_show_sca_notice'
wp option delete 'wc_stripe_show_changed_keys_notice'
wp option delete 'wc_stripe_show_legacy_deprecation_notice'
wp option delete 'wc_stripe_oauth_required'
wp option delete 'wc_stripe_show_upe_payment_methods_notice'
wp option delete 'wc_stripe_show_ece_location_notice'
wp option delete 'wc_stripe_show_subscription_detached_bulk_action_notice'
wp option delete 'wc_stripe_show_subscriptions_notice'
wp option delete 'wc_stripe_show_sofort_notice'
wp option delete 'wc_stripe_show_sofort_upe_notice'
wp option delete 'wc_stripe_show_payment_methods_notice'
wp option delete 'wc_stripe_show_oauth_required_notice'
wp option delete 'wc_stripe_version'
wp option delete 'woocommerce_gateway_stripe_retention'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_gateway_order'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_stripe_amazon_pay_default_on'
wp option delete 'woocommerce_stripe_subscriptions_legacy_sepa_tokens_updated'
wp option delete 'wc_stripe_optimized_checkout_default_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%oauth_updated_at'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%oauth_failed_attempts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%oauth_last_failed_at'"
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'woocommerce_stripe_affirm_settings'
wp option delete 'woocommerce_stripe_afterpay_clearpay_settings'
wp option delete 'woocommerce_stripe_alipay_settings'
wp option delete 'woocommerce_stripe_bancontact_settings'
wp option delete 'woocommerce_stripe_boleto_settings'
wp option delete 'woocommerce_stripe_cashapp_settings'
wp option delete 'woocommerce_stripe_card_settings'
wp option delete 'woocommerce_stripe_eps_settings'
wp option delete 'woocommerce_stripe_giropay_settings'
wp option delete 'woocommerce_stripe_ideal_settings'
wp option delete 'woocommerce_stripe_klarna_settings'
wp option delete 'woocommerce_stripe_link_settings'
wp option delete 'woocommerce_stripe_multibanco_settings'
wp option delete 'woocommerce_stripe_oxxo_settings'
wp option delete 'woocommerce_stripe_p24_settings'
wp option delete 'woocommerce_stripe_sepa_settings'
wp option delete 'woocommerce_stripe_sepa_debit_settings'
wp option delete 'woocommerce_stripe_sofort_settings'
wp option delete 'woocommerce_stripe_wechat_pay_settings'
wp option delete 'wc_stripe_elements_options'
wp option delete 'wc_stripe_show_styles_notice'
wp option delete 'wc_stripe_show_request_api_notice'
wp option delete 'wc_stripe_show_apple_pay_notice'
wp option delete 'wc_stripe_show_alipay_notice'
wp option delete 'wc_stripe_show_bancontact_notice'
wp option delete 'wc_stripe_show_eps_notice'
wp option delete 'wc_stripe_show_giropay_notice'
wp option delete 'wc_stripe_show_ideal_notice'
wp option delete 'wc_stripe_show_multibanco_notice'
wp option delete 'wc_stripe_show_oxxo_notice'
wp option delete 'wc_stripe_show_p24_notice'
wp option delete 'wc_stripe_show_sepa_notice'
wp option delete 'wc_stripe_wh_monitor_began_at'
wp option delete 'wc_stripe_wh_last_success_at'
wp option delete 'wc_stripe_wh_last_failure_at'
wp option delete 'wc_stripe_wh_last_error'
wp option delete 'wc_stripe_wh_test_monitor_began_at'
wp option delete 'wc_stripe_wh_test_last_success_at'
wp option delete 'wc_stripe_wh_test_last_failure_at'
wp option delete 'wc_stripe_wh_test_last_error'
wp option delete 'wc_stripe_oauth_updated_at'
wp option delete 'wc_stripe_oauth_failed_attempts'
wp option delete 'wc_stripe_oauth_last_failed_at'
wp option delete 'wc_stripe_test_oauth_updated_at'
wp option delete 'wc_stripe_test_oauth_failed_attempts'
wp option delete 'wc_stripe_test_oauth_last_failed_at'
wp option delete '_wcstripe_feature_upe'
wp option delete 'upe_checkout_experience_accepted_payments'
wp option delete '_wcstripe_feature_ece'

# Delete Transients
wp transient delete 'wc_stripe_level3_not_allowed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_sources_%' OR option_name LIKE '_site_transient_stripe_sources_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_customer_%' OR option_name LIKE '_site_transient_stripe_customer_%'"
wp transient delete 'wc_stripe_redirect_to_settings'

# Clear Cron Jobs
wp cron event delete 'wc_stripe_refresh_connection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
