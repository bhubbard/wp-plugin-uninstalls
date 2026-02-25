<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('PLAYCZ_topRadios_widget');
delete_site_transient('PLAYCZ_topRadios_widget');
delete_transient('PLAYCZ_topRadios_widget_bck');
delete_site_transient('PLAYCZ_topRadios_widget_bck');

