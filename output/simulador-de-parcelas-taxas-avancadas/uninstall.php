<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_simulador_parcelas_installments_list');
delete_site_option('wc_simulador_parcelas_installments_list');

