#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easypay_store_key'
wp option delete 'epwc_multiple_checkout'
wp option delete 'easypay_sandbox'
wp option delete 'epwc_allowed_payment_methods'
wp option delete 'epwc_force_multiple_checkout'
wp option delete 'epwc_plugin_settings'
wp option delete 'easypay_logo'
wp option delete 'epwc_checkout_display'
wp option delete 'epwc_checkout_hide_details'
wp option delete 'epwc_checkout_order_flow'
wp option delete 'woocommerce_applepay_checkout_settings'
wp option delete 'woocommerce_virtualiban_checkout_settings'
wp option delete 'woocommerce_creditcard_checkout_settings'
wp option delete 'woocommerce_debitodireto_checkout_settings'
wp option delete 'epwc_woocommerce_easypay_checkout_settings'
wp option delete 'woocommerce_googlepay_checkout_settings'
wp option delete 'woocommerce_mbway_checkout_settings'
wp option delete 'woocommerce_multibanco_checkout_settings'
wp option delete 'woocommerce_santanderconsumer_checkout_settings'
wp option delete 'woocommerce_universoflex_checkout_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fiscal_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fiscal_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fiscal_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fiscal_number'"
