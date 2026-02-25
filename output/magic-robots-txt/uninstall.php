<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrt_usar_archivo');
delete_site_option('mrt_usar_archivo');
delete_option('wpseo');
delete_site_option('wpseo');
delete_option('mrt_version');
delete_site_option('mrt_version');
delete_option('mrt_avanzado');
delete_site_option('mrt_avanzado');
delete_option('mrt_buscadores');
delete_site_option('mrt_buscadores');
delete_option('mrt_carga');
delete_site_option('mrt_carga');
delete_option('mrt_ahorro');
delete_site_option('mrt_ahorro');
delete_option('mrt_venta_publicidad');
delete_site_option('mrt_venta_publicidad');
delete_option('mrt_venta_enlaces');
delete_site_option('mrt_venta_enlaces');

// Delete Transients
delete_transient('mrt_settings_updated');
delete_site_transient('mrt_settings_updated');

