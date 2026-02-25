#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mh_HOYGAN'
wp option delete 'mh_censura'
wp option delete 'mh_SEO'
wp option delete 'mh_palabras_censuradas'
wp option delete 'mh_no_corregir_doble'
wp option delete 'mh_no_corregir_k'
wp option delete 'mh_no_corregir_s_t'
wp option delete 'mh_ultimo_comentario'
wp option delete 'mh_terminado'
wp option delete 'terminado'
wp option delete 'mensaje_ocultado'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_keywords'"
