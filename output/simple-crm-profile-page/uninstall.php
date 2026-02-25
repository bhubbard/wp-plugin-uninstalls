<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('scrm_pp_updated_id');
delete_site_transient('scrm_pp_updated_id');

