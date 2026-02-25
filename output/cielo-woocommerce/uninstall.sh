#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_cielo_version'
wp option delete 'woocommerce_cielo_settings'
wp option delete 'woocommerce_cielo_credit_settings'
wp option delete 'woocommerce_cielo_debit_settings'
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cielo_card_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cielo_card_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cielo_card_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cielo_card_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cielo_installments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cielo_installments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cielo_installments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cielo_installments'"
