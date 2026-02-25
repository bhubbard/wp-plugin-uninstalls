<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mnpn_dias_limpieza');
delete_site_option('mnpn_dias_limpieza');
delete_option('mnpn_texto_vacio');
delete_site_option('mnpn_texto_vacio');
delete_option('mnpn_css_personalizado');
delete_site_option('mnpn_css_personalizado');
delete_option('mnpn_excluir_actual');
delete_site_option('mnpn_excluir_actual');
delete_option('mnpn_modo_dev');
delete_site_option('mnpn_modo_dev');
delete_option('mnpn_hoy_titulo');
delete_site_option('mnpn_hoy_titulo');
delete_option('mnpn_hoy_cantidad');
delete_site_option('mnpn_hoy_cantidad');
delete_option('mnpn_hoy_contador');
delete_site_option('mnpn_hoy_contador');
delete_option('mnpn_hoy_antiguedad');
delete_site_option('mnpn_hoy_antiguedad');
delete_option('mnpn_hoy_layout');
delete_site_option('mnpn_hoy_layout');
delete_option('mnpn_trend_titulo');
delete_site_option('mnpn_trend_titulo');
delete_option('mnpn_trend_cantidad');
delete_site_option('mnpn_trend_cantidad');
delete_option('mnpn_trend_contador');
delete_site_option('mnpn_trend_contador');
delete_option('mnpn_trend_antiguedad');
delete_site_option('mnpn_trend_antiguedad');
delete_option('mnpn_trend_layout');
delete_site_option('mnpn_trend_layout');
delete_option('mnpn_semana_titulo');
delete_site_option('mnpn_semana_titulo');
delete_option('mnpn_semana_cantidad');
delete_site_option('mnpn_semana_cantidad');
delete_option('mnpn_semana_contador');
delete_site_option('mnpn_semana_contador');
delete_option('mnpn_semana_antiguedad');
delete_site_option('mnpn_semana_antiguedad');
delete_option('mnpn_semana_layout');
delete_site_option('mnpn_semana_layout');

