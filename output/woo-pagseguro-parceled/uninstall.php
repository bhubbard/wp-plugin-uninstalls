<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_pagseguro_parceled_settings');
delete_site_option('woo_pagseguro_parceled_settings');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

