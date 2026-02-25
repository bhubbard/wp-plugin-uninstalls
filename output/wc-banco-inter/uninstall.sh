#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_base_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_PathKey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_PathCRT'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_WebhookCRT'"
wp option delete 'plugin_banco_inter_licence_key'

# Clear Cron Jobs
wp cron event delete 'banco_inter_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boleto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boleto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boleto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boleto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nossonumero'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nossonumero'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nossonumero'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nossonumero'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codigoSolicitacao'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codigoSolicitacao'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codigoSolicitacao'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codigoSolicitacao'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixCopiaECola'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixCopiaECola'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixCopiaECola'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixCopiaECola'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixTxid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixTxid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixTxid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixTxid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pix'"
