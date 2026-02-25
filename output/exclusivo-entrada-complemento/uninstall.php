<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exclusivo_entrada_plugin_categoria_value');
delete_site_option('exclusivo_entrada_plugin_categoria_value');
delete_option('exclusivo_entrada_plugin_value');
delete_site_option('exclusivo_entrada_plugin_value');

