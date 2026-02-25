<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voltar_topo_pages');
delete_site_option('voltar_topo_pages');
delete_option('voltar_topo_background_color');
delete_site_option('voltar_topo_background_color');
delete_option('voltar_topo_icon');
delete_site_option('voltar_topo_icon');

