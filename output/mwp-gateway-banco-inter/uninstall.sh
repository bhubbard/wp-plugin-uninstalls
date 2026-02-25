#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwp_inter_wc_chave_pix'
wp option delete 'mwp_inter_wc_patch_key_path'
wp option delete 'mwp_inter_wc_patch_ctr_path'
wp option delete 'mwp_inter_wc_token'
wp option delete 'mwp_inter_wc_secret_token'
wp option delete 'mwp_inter_wc_conta_corrente'
wp option delete 'mwp_inter_wc_beneficiario'
wp option delete 'mwp_inter_wc_cidade'

# Clear Cron Jobs
wp cron event delete 'mwp_inter_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qrcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qrcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qrcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qrcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arquivo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arquivo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arquivo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arquivo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copypast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copypast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copypast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copypast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nossoNumero'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nossoNumero'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nossoNumero'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nossoNumero'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'txid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'txid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'txid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'txid'"
