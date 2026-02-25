#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_acceptblue-ach_settings'
wp option delete 'woocommerce_acceptblue-cc_settings'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_currency'

# Clear Cron Jobs
wp cron event delete 'acceptblue_check_ach_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acceptblue_xrefnum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acceptblue_xrefnum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acceptblue_xrefnum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acceptblue_xrefnum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acceptblue_transaction_charged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acceptblue_transaction_charged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acceptblue_transaction_charged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acceptblue_transaction_charged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Accept.blue Payment ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Accept.blue Payment ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Accept.blue Payment ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Accept.blue Payment ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_card_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_card_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_card_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_card_id'"
