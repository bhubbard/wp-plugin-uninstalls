<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('fuelprice_cities');
delete_site_transient('fuelprice_cities');
delete_transient('fuelprice_widget_types');
delete_site_transient('fuelprice_widget_types');
delete_transient('fuelprice_fuel_types');
delete_site_transient('fuelprice_fuel_types');

