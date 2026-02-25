#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wpg_braintree_settings'
wp option delete 'woocommerce_default_country'
wp option delete 'wpg_activation_time'
wp option delete 'wpg_review_notice_hide_v2'
wp option delete 'wpg_next_show_time'
wp option delete 'woocommerce_wpg_paypal_express_settings'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_wpg_paypal_checkout_settings'
wp option delete '_new_version_description_icon_type_redirect_icon_applied'
wp option delete '_wpg_button_pages_migrated'
wp option delete 'wpg_connection_time'
wp option delete 'ppcp_sandbox_webhook_id'
wp option delete 'ppcp_live_webhook_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'cacsp_option_always_scripts'

# Delete Transients
wp transient delete 'wpg_ppcp_live_onboarding_status'
wp transient delete 'wpg_ppcp_sandbox_onboarding_status'
wp transient delete 'wpg_primary_email_not_confirmed'
wp transient delete 'wpg_sandbox_seller_onboarding_process_done'
wp transient delete 'wpg_live_seller_onboarding_process_done'
wp transient delete 'wpg_sandbox_seller_onboarding_process_failed'
wp transient delete 'wpg_live_seller_onboarding_process_failed'
wp transient delete 'wpg_invalid_client_secret_message'
wp transient delete 'wpg_ppcp_display_success_popup'
wp transient delete 'ppcp_sandbox_access_token'
wp transient delete 'ppcp_sandbox_client_token'
wp transient delete 'ppcp_client_token'
wp transient delete 'ppcp_access_token'
wp transient delete 'ppcp_live_access_token'
wp transient delete 'ppcp_live_client_token'
wp transient delete 'ppcp_is_webhook_process_started'
wp transient delete 'woo_paypal_gateway_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'braintree_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'braintree_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'braintree_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'braintree_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_agreement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_agreement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_agreement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_agreement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpg_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpg_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpg_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpg_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppcp_used_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_customer_id'"
