#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allpacka_allapot'
wp option delete 'allpacka_fizetesi_modok'
wp option delete 'allpacka_felado_neve'
wp option delete 'allpacka_felado_bank_neve'
wp option delete 'allpacka_felado_bankszamlaszama'
wp option delete 'allpacka_tiltott_aru'
wp option delete 'allpacka_aszf'
wp option delete 'allpacka_tesztkornyezet'
wp option delete 'allpacka_email'
wp option delete 'allpacka_jelszo'
wp option delete 'allpacka_debug'
wp option delete 'allpacka_cod_notice_dismiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allpacka_azonosito'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allpacka_azonosito'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allpacka_azonosito'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allpacka_azonosito'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allpacka_fuvarlevelszam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allpacka_fuvarlevelszam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allpacka_fuvarlevelszam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allpacka_fuvarlevelszam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allpacka_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allpacka_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allpacka_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allpacka_kivalasztott_gls_csomagpont'"
