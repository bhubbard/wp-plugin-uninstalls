#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psms_pac_fail'
wp option delete 'psms_woo_triggers'
wp option delete 'wc_any_shipping_notify_available_companies'
wp option delete 'psms-disparopro-token'

# Clear Cron Jobs
wp cron event delete 'psms_reminder_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psms_notify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psms_notify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psms_notify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psms_notify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pagarme_transaction_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pagarme_transaction_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pagarme_transaction_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pagarme_transaction_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pagarme_pix_payment_qr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pagarme_pix_payment_qr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pagarme_pix_payment_qr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pagarme_pix_payment_qr_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moip_payment_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moip_payment_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moip_payment_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moip_payment_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_paghiper_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_paghiper_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_paghiper_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_paghiper_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mundipagg_banking_ticket_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transacao_boletoURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transacao_boletoURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transacao_boletoURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transacao_boletoURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boletofacil_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boletofacil_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boletofacil_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boletofacil_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loja5_woo_itau_shopline_link_boleto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loja5_woo_itau_shopline_link_boleto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loja5_woo_itau_shopline_link_boleto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loja5_woo_itau_shopline_link_boleto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loja5_woo_bradesco_api_boleto_dados'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loja5_woo_bradesco_api_boleto_dados'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loja5_woo_bradesco_api_boleto_dados'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loja5_woo_bradesco_api_boleto_dados'"
