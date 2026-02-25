-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('concursos_tap_concursos', 'widget_epic_recent_posts', 'TAP_BOOKIES');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_tipo_publicacion', '_tipster_statistics_last', '_social_link_display_in', '_social_link_url_href', '_social_link_url_target', '_social_link_icon', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_resultado');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_tipo_publicacion', '_tipster_statistics_last', '_social_link_display_in', '_social_link_url_href', '_social_link_url_target', '_social_link_icon', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_resultado');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_tipo_publicacion', '_tipster_statistics_last', '_social_link_display_in', '_social_link_url_href', '_social_link_url_target', '_social_link_icon', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_resultado');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_tipo_publicacion', '_tipster_statistics_last', '_social_link_display_in', '_social_link_url_href', '_social_link_url_target', '_social_link_icon', '_pick_tipster', '_pick_evento', '_pick_pronostico', '_pick_cuota', '_pick_stake', '_pick_casa_apuesta', '_pick_fecha_evento', '_pick_hora_evento', '_pick_resultado');

