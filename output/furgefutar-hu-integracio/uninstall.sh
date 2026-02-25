#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'furgefutar_gls_csomagpont_api_kulcs'
wp option delete 'furgefutar_gls_csomagpont_tipus'
wp option delete 'furgefutar_allapot'
wp option delete 'furgefutar_fizetesi_modok'
wp option delete 'furgefutar_felado_neve'
wp option delete 'furgefutar_felado_bank_neve'
wp option delete 'furgefutar_felado_bankszamlaszama'
wp option delete 'furgefutar_tiltott_aru'
wp option delete 'furgefutar_aszf'
wp option delete 'furgefutar_tesztkornyezet'
wp option delete 'furgefutar_email'
wp option delete 'furgefutar_jelszo'
wp option delete 'furgefutar_debug'
wp option delete 'furgefutar_cod_notice_dismiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_furgefutar_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_furgefutar_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_furgefutar_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_furgefutar_kivalasztott_gls_csomagpont'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_furgefutar_azonosito'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_furgefutar_azonosito'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_furgefutar_azonosito'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_furgefutar_azonosito'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_furgefutar_fuvarlevelszam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_furgefutar_fuvarlevelszam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_furgefutar_fuvarlevelszam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_furgefutar_fuvarlevelszam'"
