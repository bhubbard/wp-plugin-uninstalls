#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_mundipagg_version_on_install'
wp option delete 'woocommerce_force_ssl_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mundipagg_credit_card_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mundipagg_credit_card_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mundipagg_credit_card_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mundipagg_credit_card_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
