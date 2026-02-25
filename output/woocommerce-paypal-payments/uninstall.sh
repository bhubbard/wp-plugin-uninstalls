#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce-ppcp-data-payment'
wp option delete 'woocommerce-ppcp-data-settings'
wp option delete 'woocommerce_ppcp-axo-gateway_settings'
wp option delete 'woocommerce_ppcp-recaptcha_settings'
wp option delete 'woocommerce-ppcp-is-new-merchant'
wp option delete 'woocommerce-ppcp-settings'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_paypal_branded'
wp option delete 'ppcp_payment_tokens_migration_initialized'
wp option delete 'woocommerce_ppcp-oxxo-gateway_settings'
wp option delete 'woocommerce_ppcp-pay-upon-invoice-gateway_settings'
wp option delete 'woocommerce_ppcp-card-button-gateway_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'ppcp-request-ids'
wp option delete 'ppcp_bn_code'
wp option delete 'woocommerce-ppcp-version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppcp_cart_by_order_%' OR option_name LIKE '_site_transient_ppcp_cart_by_order_%'"
wp transient delete 'ppcp_has_ppec_subscriptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp_guest_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp-vault-token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp-vault-token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp-vault-token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp-vault-token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
