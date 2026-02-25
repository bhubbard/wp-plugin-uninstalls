#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jc_wc_codice_fiscale_obbligatorio'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partita_iva'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partita_iva'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partita_iva'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partita_iva'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codice_fiscale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codice_fiscale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codice_fiscale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codice_fiscale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pec'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pec'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pec'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pec'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codice_destinatario'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codice_destinatario'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codice_destinatario'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codice_destinatario'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'azienda_privato'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'azienda_privato'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'azienda_privato'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'azienda_privato'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
