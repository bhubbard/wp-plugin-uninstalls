#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_braintree_level3_not_allowed_%'"
wp option delete 'sv_wc_apple_pay_enabled'
wp option delete 'sv_wc_google_pay_enabled'
wp option delete 'woocommerce_paypalbraintree_cards_settings'
wp option delete 'wc_paypal_braintree_merchant_access_token'
wp option delete 'wc_paypal_braintree_environment'
wp option delete 'wc_paypal_braintree_merchant_id'
wp option delete 'woocommerce_braintree_credit_card_settings'
wp option delete 'woocommerce_braintree_paypal_settings'
wp option delete 'wc_braintree_legacy_migrated'
wp option delete 'wc_braintree_auth_access_token'
wp option delete 'wc_braintree_auth_environment'
wp option delete 'wc_braintree_auth_merchant_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'sv_wc_apple_pay_button_style'
wp option delete 'sv_wc_apple_pay_display_locations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version'"
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_default_country'
wp option delete 'sv_wc_apple_pay_cert_path'
wp option delete 'sv_wc_apple_pay_merchant_id'
wp option delete 'woocommerce_calc_shipping'

# Delete Transients
wp transient delete 'sv_wc_plugin_wc_versions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_migrated'"
