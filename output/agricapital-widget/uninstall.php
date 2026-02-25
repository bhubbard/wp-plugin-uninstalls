<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agriwi_codigo_referido');
delete_site_option('agriwi_codigo_referido');
delete_option('agriwi_mostrar_en_woocommerce');
delete_site_option('agriwi_mostrar_en_woocommerce');

