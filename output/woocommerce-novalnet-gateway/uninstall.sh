#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gzdp_checkout_enable'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'novalnet_admin_full_refund'
wp option delete 'novalnet_enable_subs'
wp option delete 'novalnet_enable_shop_subs'
wp option delete 'novalnet_subs_tariff_id'
wp option delete 'novalnet_usr_subcl'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'novalnet_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'novalnet_key_password'
wp option delete 'novalnet_db_version'
wp option delete 'woocommerce_gateway_order'
wp option delete 'novalnet_public_key'
wp option delete 'novalnet_client_key'
wp option delete 'novalnet_enable_callback'
wp option delete 'novalnet_callback_emailtoaddr'
wp option delete 'woocommerce_novalnet_guaranteed_sepa_settings'
wp option delete 'woocommerce_novalnet_guaranteed_invoice_settings'
wp option delete 'woocommerce_gzd_display_checkout_fallback'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nn_subscription_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nn_subscription_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nn_subscription_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nn_subscription_updated'"
