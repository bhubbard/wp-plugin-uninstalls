#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tipo_checkbox_ce'
wp option delete 'tipo_checkbox_pass'
wp option delete 'tipo_checkbox_otros'
wp option delete 'tipo_checkbox_dni'
wp option delete 'tipo_checkbox_ruc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_documento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_documento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_documento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_documento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nro'"
