#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'symbol_location'
wp option delete 'mostrar_poweredby'
wp option delete 'pagina-propiedades'
wp option delete 'margintoppage'
wp option delete 'mostrar_form'
wp option delete 'email_informes'
wp option delete 'properties_per_page'
wp option delete 'mostrar_titulo'
wp option delete 'max_width'
wp option delete 'simbolo_moneda'
wp option delete 'label_re_estado'
wp option delete 'label_re_ciudad'
wp option delete 'label_re_colonia'
wp option delete 'label_re_toperacion'
wp option delete 'label_re_tpropiedad'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_colonia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_colonia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_colonia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_colonia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_calle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_calle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_calle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_calle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_precio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_precio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_precio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_precio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_superficie_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_superficie_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_superficie_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_superficie_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_superficie_construida'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_superficie_construida'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_superficie_construida'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_superficie_construida'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_niveles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_niveles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_niveles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_niveles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_recamaras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_recamaras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_recamaras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_recamaras'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_espacios_auto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_espacios_auto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_espacios_auto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_espacios_auto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_banos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_banos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_banos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_banos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_medios_banos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_medios_banos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_medios_banos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_medios_banos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_espacios'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_espacios'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_espacios'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_espacios'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_servicios'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_servicios'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_servicios'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_servicios'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_mapa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_mapa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_mapa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_mapa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_url_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_url_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_url_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_url_youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_numero'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_numero'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_numero'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_numero'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_operacion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_operacion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_operacion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_operacion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_tipopropiedad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_tipopropiedad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_tipopropiedad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_tipopropiedad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propiedad_resumen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propiedad_resumen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propiedad_resumen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propiedad_resumen'"
