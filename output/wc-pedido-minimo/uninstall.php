<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc-pedido-minimo-onoff');
delete_site_option('wc-pedido-minimo-onoff');
delete_option('wc-pedido-minimo-usuarios');
delete_site_option('wc-pedido-minimo-usuarios');
delete_option('wc-pedido-minimo-funcionamento');
delete_site_option('wc-pedido-minimo-funcionamento');
delete_option('wc-pedido-minimo-valor');
delete_site_option('wc-pedido-minimo-valor');
delete_option('wc-pedido-minimo-quantidade');
delete_site_option('wc-pedido-minimo-quantidade');
delete_option('wc-pedido-minimo-pagamentos');
delete_site_option('wc-pedido-minimo-pagamentos');

