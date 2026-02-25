<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('IAWC_cassa_previdenziale');
delete_site_option('IAWC_cassa_previdenziale');
delete_option('cassa_previdenziale');
delete_site_option('cassa_previdenziale');

