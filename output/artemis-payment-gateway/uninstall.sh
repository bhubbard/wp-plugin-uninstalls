#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'artemis_payment_gateway_plugin_activation_time'
wp option delete 'void_spare_me'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_agp_settings'
wp option delete 'agp_token_api'
wp option delete 'agp_token_api_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OrderTransactionHash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OrderTransactionHash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OrderTransactionHash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OrderTransactionHash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expired_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expired_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expired_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expired_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agp_transaction_memo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agp_transaction_memo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agp_transaction_memo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agp_transaction_memo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agp_choosen_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agp_choosen_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agp_choosen_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agp_choosen_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agp_choosen_payment_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agp_choosen_payment_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agp_choosen_payment_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agp_choosen_payment_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agp_choosen_payment_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agp_choosen_payment_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agp_choosen_payment_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agp_choosen_payment_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
