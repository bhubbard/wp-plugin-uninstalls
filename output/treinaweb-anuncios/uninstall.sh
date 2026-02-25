#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'versao_tab_anuncio'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_anuncio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_anuncio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_anuncio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_anuncio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tipo_anuncio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tipo_anuncio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tipo_anuncio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tipo_anuncio'"
