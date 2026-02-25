#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PRONOSTICO_APUESTAS_PROMOCION'
wp option delete 'PRONOSTICO_APUESTAS_METODOS_PAGO'
wp option delete 'tipster_tap_bookies'
wp option delete 'PRONOSTICO_APUESTAS_PAGINA_PAYPAL_PAGO_CANCELADO'
wp option delete 'PRONOSTICO_APUESTAS_PAGINA_PAYPAL_PAGO_ACEPTADO'
wp option delete 'PRONOSTICO_APUESTAS_PAGINA_CARRITO'
wp option delete 'PRONOSTICO_APUESTAS_PAGINA_SOPORTE'

# Clear Cron Jobs
wp cron event delete 'pronostico_apuestas_cancelar_suscripcion_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_tipo_publicacion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_tipo_publicacion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_tipo_publicacion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_tipo_publicacion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronostico_apuesta_email_enviado'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronostico_apuesta_email_enviado'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronostico_apuesta_email_enviado'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronostico_apuesta_email_enviado'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_resultado'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_resultado'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_resultado'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_resultado'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_pronostico_pago'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_pronostico_pago'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_pronostico_pago'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_pronostico_pago'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_tipster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_tipster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_tipster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_tipster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_evento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_evento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_evento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_evento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_pronostico'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_pronostico'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_pronostico'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_pronostico'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_cuota'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_cuota'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_cuota'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_cuota'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_stake'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_stake'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_stake'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_stake'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_casa_apuesta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_casa_apuesta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_casa_apuesta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_casa_apuesta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_fecha_evento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_fecha_evento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_fecha_evento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_fecha_evento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_hora_evento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_hora_evento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_hora_evento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_hora_evento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_tipo_apuesta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_tipo_apuesta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_tipo_apuesta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_tipo_apuesta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tipster_suscripcion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tipster_suscripcion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tipster_suscripcion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tipster_suscripcion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%'"
