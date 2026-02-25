#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cardknox_settings'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'wc_cardknox_version'
wp option delete 'woocommerce_cardknox-googlepay_settings'
wp option delete 'woocommerce_cardknox-applepay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardknox_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardknox_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardknox_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardknox_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardknox_masked_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardknox_masked_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardknox_masked_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardknox_masked_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardknox_cardtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardknox_cardtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardknox_cardtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardknox_cardtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardknox_xrefnum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardknox_xrefnum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardknox_xrefnum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardknox_xrefnum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardknox_transaction_captured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardknox_transaction_captured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardknox_transaction_captured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardknox_transaction_captured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Sola Payment ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Sola Payment ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Sola Payment ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Sola Payment ID'"
