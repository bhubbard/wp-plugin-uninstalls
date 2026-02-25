#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'fatture-help-wc_cron'
wp cron event delete 'fatturehelp-wc_migration_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-wantInvoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-wantInvoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-wantInvoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-wantInvoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-isCompany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-isCompany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-isCompany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-isCompany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-taxcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-taxcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-taxcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-taxcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-VATnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-VATnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-VATnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-VATnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-CodiceDestinatario'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-CodiceDestinatario'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-CodiceDestinatario'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-CodiceDestinatario'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-PECDestinatario'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-PECDestinatario'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-PECDestinatario'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-PECDestinatario'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-haveSdI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-haveSdI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-haveSdI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-haveSdI'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fatturehelp-wc-wantXML'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fatturehelp-wc-wantXML'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fatturehelp-wc-wantXML'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fatturehelp-wc-wantXML'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fatturehelp-wc-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fatturehelp-wc-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fatturehelp-wc-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fatturehelp-wc-%'"
