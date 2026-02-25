#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'facto_webservice_mode'
wp option delete 'facto_webservice_user'
wp option delete 'facto_webservice_pass'
wp option delete 'facto_checkbox_fe'
wp option delete 'facto_checkbox_fee'
wp option delete 'facto_checkbox_be'
wp option delete 'facto_checkbox_bee'
wp option delete 'facto_checkbox_fex'
wp option delete 'facto_docs_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fact'"
wp option delete 'facto_checkbox_estadoprocesando'
wp option delete 'facto_checkbox_estadocompletado'
wp option delete 'facto_select_rounding_type'
wp option delete 'facto_checkbox_add_shipping'
wp option delete 'facto_checkbox_totalneto'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Tipo de documento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Tipo de documento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Tipo de documento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Tipo de documento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RUT'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RUT'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RUT'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RUT'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Giro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Giro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Giro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Giro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Raz&oacute;n social'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Raz&oacute;n social'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Raz&oacute;n social'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Raz&oacute;n social'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Razon social'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Razon social'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Razon social'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Razon social'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Modalidad venta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Modalidad venta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Modalidad venta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Modalidad venta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Clausula venta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Clausula venta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Clausula venta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Clausula venta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Folio de documento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Folio de documento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Folio de documento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Folio de documento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Fecha de documento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Fecha de documento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Fecha de documento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Fecha de documento'"
