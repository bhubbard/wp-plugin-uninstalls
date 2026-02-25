#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ccd_bkash_settings'
wp option delete 'woocommerce_ccd_nagad_settings'
wp option delete 'woocommerce_ccd_rocket_settings'
wp option delete 'ccd_enable_advance_payment'
wp option delete 'ccd_advance_payment_status_label'
wp option delete 'ccd_advance_payment_title'
wp option delete 'ccd_advance_payment_text'
wp option delete 'ccd_remaining_payment_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_nagad_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_nagad_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_nagad_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_nagad_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_nagad_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_nagad_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_nagad_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_nagad_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_rocket_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_rocket_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_rocket_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_rocket_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_rocket_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_rocket_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_rocket_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_rocket_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_payoneeer_sender_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_payoneeer_sender_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_payoneeer_sender_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_payoneeer_sender_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_payoneer_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_payoneer_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_payoneer_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_payoneer_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_advance_payment_received'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_advance_payment_received'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_advance_payment_received'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_advance_payment_received'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_original_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_original_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_original_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_original_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_advance_amount_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_advance_amount_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_advance_amount_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_advance_amount_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccd_remaining_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccd_remaining_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccd_remaining_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccd_remaining_amount'"
