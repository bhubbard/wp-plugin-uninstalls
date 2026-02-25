#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_dni_afip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_dni_afip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_dni_afip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_dni_afip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DNI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DNI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DNI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DNI'"
