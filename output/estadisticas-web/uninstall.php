<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ga_plugin_id_seguimiento');
delete_site_option('ga_plugin_id_seguimiento');
delete_option('ga_plugin_carga_asincrona');
delete_site_option('ga_plugin_carga_asincrona');
delete_option('awe_plugin_id_seguimiento');
delete_site_option('awe_plugin_id_seguimiento');
delete_option('awe_plugin_carga_asincrona');
delete_site_option('awe_plugin_carga_asincrona');

