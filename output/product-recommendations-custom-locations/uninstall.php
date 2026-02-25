<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wc_prl_cl_custom_locations_data_map');
delete_site_transient('wc_prl_cl_custom_locations_data_map');

