<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trusted_clients_total_fotos');
delete_site_option('trusted_clients_total_fotos');
delete_option('trusted_clients_mostrar_estrellas');
delete_site_option('trusted_clients_mostrar_estrellas');
delete_option('trusted_clients_aleatorio');
delete_site_option('trusted_clients_aleatorio');
delete_option('trusted_clients_texto');
delete_site_option('trusted_clients_texto');
delete_option('trusted_clients_fotos_mostrar');
delete_site_option('trusted_clients_fotos_mostrar');
delete_option('trusted_clients_feedback');
delete_site_option('trusted_clients_feedback');

