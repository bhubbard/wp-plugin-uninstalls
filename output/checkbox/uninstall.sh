#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppo_autoopen_shift'
wp option delete 'ppo_connected'
wp option delete 'ppo_cashbox_edrpou'
wp option delete 'ppo_cashbox_key'
wp option delete 'ppo_logger'
wp option delete 'ppo_login'
wp option delete 'ppo_password'
wp option delete 'ppo_is_dev_mode'
wp option delete 'ppo_autocreate'
wp option delete 'ppo_autocreate_receipt_order_statuses'
wp option delete 'ppo_autocreate_payment_order_statuses'
wp option delete 'ppo_rules_active'
wp option delete 'ppo_payment_type'
wp option delete 'ppo_cashier_name'
wp option delete 'ppo_cashier_surname'
wp option delete 'ppo_payment_type_checkbox'
wp option delete 'ppo_tax_code'
wp option delete 'ppo_receipt_coupon_text'
wp option delete 'ppo_zero_product_exclude'
wp option delete 'ppo_barcode'
wp option delete 'ppo_barcode_type'
wp option delete 'ppo_barcode_from_meta'
wp option delete 'ppo_payment_type_label'
wp option delete 'ppo_receipt_footer'
wp option delete 'ppo_sign_method'
wp option delete 'ppo_skip_receipt_creation'

# Clear Cron Jobs
wp cron event delete 'checkbox_close_shift'
wp cron event delete 'checkbox_open_shift'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_checkbox_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_checkbox_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_checkbox_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_checkbox_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'receipt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'receipt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'receipt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'receipt_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_acq_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_acq_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_acq_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_acq_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_terminal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_terminal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_terminal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_terminal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_agent_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_agent_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_agent_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_agent_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_sender_card_mask2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_sender_card_mask2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_sender_card_mask2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_sender_card_mask2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_liqpay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_liqpay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_liqpay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_liqpay_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_rrn_debit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_rrn_debit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_rrn_debit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_rrn_debit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_sender_card_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_sender_card_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_sender_card_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_sender_card_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mrkv_liqpay_authcode_debit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mrkv_liqpay_authcode_debit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mrkv_liqpay_authcode_debit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mrkv_liqpay_authcode_debit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_tran_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_tran_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_tran_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_tran_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_terminal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_terminal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_terminal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_terminal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_masked_pan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_masked_pan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_masked_pan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_masked_pan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_rrn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_rrn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_rrn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_rrn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_payment_system'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_payment_system'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_payment_system'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_payment_system'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkv_mopay_accuiring_approval_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkv_mopay_accuiring_approval_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkv_mopay_accuiring_approval_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkv_mopay_accuiring_approval_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'receipt_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'receipt_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'receipt_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'receipt_url'"
