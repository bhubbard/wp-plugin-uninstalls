-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mnpn_dias_limpieza', 'mnpn_texto_vacio', 'mnpn_css_personalizado', 'mnpn_excluir_actual', 'mnpn_modo_dev', 'mnpn_hoy_titulo', 'mnpn_hoy_cantidad', 'mnpn_hoy_contador', 'mnpn_hoy_antiguedad', 'mnpn_hoy_layout', 'mnpn_trend_titulo', 'mnpn_trend_cantidad', 'mnpn_trend_contador', 'mnpn_trend_antiguedad', 'mnpn_trend_layout', 'mnpn_semana_titulo', 'mnpn_semana_cantidad', 'mnpn_semana_contador', 'mnpn_semana_antiguedad', 'mnpn_semana_layout');

