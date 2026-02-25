<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('RFWC_cassa_previdenziale');
delete_site_option('RFWC_cassa_previdenziale');
delete_option('RFWC_cassa_previdenziale_tipologia');
delete_site_option('RFWC_cassa_previdenziale_tipologia');
delete_option('RFWC_cassa_previdenziale_percentuale');
delete_site_option('RFWC_cassa_previdenziale_percentuale');

