#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_gerencianet_assinaturas_boleto_settings'
wp option delete 'woocommerce_wc_gerencianet_assinaturas_cartao_settings'
wp option delete 'woocommerce_wc_gerencianet_assinaturas_pix_settings'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gn_billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gn_billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gn_billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gn_billing_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gn_billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gn_billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gn_billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gn_billing_number'"
