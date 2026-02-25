#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'IdUser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'IdUser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'IdUser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'IdUser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TokenUser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TokenUser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TokenUser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TokenUser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Resultado'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Resultado'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Resultado'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Resultado'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Log de operación'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Log de operación'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Log de operación'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Log de operación'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PAN'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PAN'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PAN'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PAN'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_paytpv_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_paytpv_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_paytpv_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_paytpv_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referencia_paytpv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referencia_paytpv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referencia_paytpv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referencia_paytpv'"
