#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bco_settings'
wp option delete 'billmate_common_activateonstatus'
wp option delete 'billmate_common_cancelonstatus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billmate_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billmate_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billmate_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billmate_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_reservation_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_reservation_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_reservation_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_reservation_cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_reservation_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_reservation_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_reservation_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_reservation_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_krokedil_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_krokedil_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_krokedil_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_krokedil_refunded'"
