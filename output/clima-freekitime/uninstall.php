<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freekitime_clima_ancho');
delete_site_option('freekitime_clima_ancho');
delete_option('freekitime_clima_pronostico');
delete_site_option('freekitime_clima_pronostico');
delete_option('freekitime_clima_codigo_ciudad');
delete_site_option('freekitime_clima_codigo_ciudad');

