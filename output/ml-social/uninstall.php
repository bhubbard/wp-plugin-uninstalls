<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('traqueamento');
delete_site_option('traqueamento');
delete_option('produto');
delete_site_option('produto');
delete_option('categoria');
delete_site_option('categoria');
delete_option('keywords');
delete_site_option('keywords');
delete_option('compre_ja');
delete_site_option('compre_ja');
delete_option('mercado_pago');
delete_site_option('mercado_pago');
delete_option('min');
delete_site_option('min');
delete_option('max');
delete_site_option('max');
delete_option('style');
delete_site_option('style');

