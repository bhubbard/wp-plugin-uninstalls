<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('dirtysuds_howdy');
delete_site_transient('dirtysuds_howdy');
delete_transient('dirtysuds_howdy_rate');
delete_site_transient('dirtysuds_howdy_rate');

