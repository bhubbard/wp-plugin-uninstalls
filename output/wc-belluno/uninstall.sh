#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_belluno_bankslip_settings'
wp option delete 'woocommerce_belluno_card_settings'
wp option delete 'woocommerce_belluno_settings'
wp option delete 'woocommerce_belluno_pix_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_belluno_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_belluno_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_belluno_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_belluno_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_belluno_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_belluno_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_belluno_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_belluno_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_belluno_billet_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_belluno_billet_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_belluno_billet_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_belluno_billet_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_belluno_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_belluno_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_belluno_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_belluno_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_client_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_client_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_client_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_client_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_number'"
