<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('spp_bpr_plugins_data');
delete_site_transient('spp_bpr_plugins_data');

