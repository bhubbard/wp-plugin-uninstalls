-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PRONOSTICO_APUESTAS_PROMOCION', 'PRONOSTICO_APUESTAS_METODOS_PAGO', 'tipster_tap_bookies', 'PRONOSTICO_APUESTAS_PAGINA_PAYPAL_PAGO_CANCELADO', 'PRONOSTICO_APUESTAS_PAGINA_PAYPAL_PAGO_ACEPTADO', 'PRONOSTICO_APUESTAS_PAGINA_CARRITO', 'PRONOSTICO_APUESTAS_PAGINA_SOPORTE');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_tipo_publicacion', '_pronostico_apuesta_email_enviado', '_pick_resultado', '_pick_pronostico_pago', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_tipo_apuesta', '_wp_page_template', '_tipster_suscripcion');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_tipo_publicacion', '_pronostico_apuesta_email_enviado', '_pick_resultado', '_pick_pronostico_pago', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_tipo_apuesta', '_wp_page_template', '_tipster_suscripcion');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_tipo_publicacion', '_pronostico_apuesta_email_enviado', '_pick_resultado', '_pick_pronostico_pago', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_tipo_apuesta', '_wp_page_template', '_tipster_suscripcion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_tipo_publicacion', '_pronostico_apuesta_email_enviado', '_pick_resultado', '_pick_pronostico_pago', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_tipo_apuesta', '_wp_page_template', '_tipster_suscripcion');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pronostico_apuestas_suscripcion_activa_tipster_%';

