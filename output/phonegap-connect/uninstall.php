<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phonegapDanielRiera_categoriasShow');
delete_site_option('phonegapDanielRiera_categoriasShow');
delete_option('phonegapDanielRiera_token');
delete_site_option('phonegapDanielRiera_token');
delete_option('phonegapDanielRiera_opciones');
delete_site_option('phonegapDanielRiera_opciones');
delete_option('phonegapDanielRiera_comentarios');
delete_site_option('phonegapDanielRiera_comentarios');
delete_option('phonegapDanielRiera_mostrar_comentarios');
delete_site_option('phonegapDanielRiera_mostrar_comentarios');

