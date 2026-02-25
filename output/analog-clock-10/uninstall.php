<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpAnalogSaatRastgele');
delete_site_option('wpAnalogSaatRastgele');
delete_option('wpAnalogSaatGenislik');
delete_site_option('wpAnalogSaatGenislik');
delete_option('wpAnalogSaatYukseklik');
delete_site_option('wpAnalogSaatYukseklik');
delete_option('wpAnalogSaatTipi');
delete_site_option('wpAnalogSaatTipi');

