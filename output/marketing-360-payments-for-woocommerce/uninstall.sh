#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_stripe_settings'
wp option delete 'woocommerce_store_postcode'
wp option delete 'wc_stripe_show_ssl_notice'
wp option delete 'wc_stripe_show_keys_notice'
wp option delete 'wc_stripe_show_3ds_notice'
wp option delete 'wc_stripe_show_phpver_notice'
wp option delete 'wc_stripe_show_wcver_notice'
wp option delete 'wc_stripe_show_curl_notice'
wp option delete 'wc_stripe_show_sca_notice'
wp option delete 'wc_stripe_show_changed_keys_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'wc_stripe_show_style_notice'
wp option delete 'wc_m360_payments_version'
wp option delete 'wc_m360_payments_show_style_notice'
wp option delete 'wc_m360_payments_show_sca_notice'
wp option delete 'woocommerce_gateway_m360_payments_retention'
wp option delete '_wcstripe_feature_upe'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_default_country'
wp option delete 'm360_client_token'
wp option delete 'm360_client_token_expiration'
wp option delete 'woocommerce_stripe_account_details'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'wc_stripe_show_styles_notice'
wp option delete 'wc_stripe_show_request_api_notice'
wp option delete 'wc_stripe_show_apple_pay_notice'
wp option delete 'wc_stripe_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_stripe_processing_intent_%' OR option_name LIKE '_site_transient_wc_stripe_processing_intent_%'"
wp transient delete 'wc_stripe_level3_not_allowed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_sources_%' OR option_name LIKE '_site_transient_stripe_sources_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_customer_%' OR option_name LIKE '_site_transient_stripe_customer_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_card_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_card_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_card_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_card_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_intent_id'"
