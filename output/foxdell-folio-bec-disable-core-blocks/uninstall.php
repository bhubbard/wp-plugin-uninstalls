<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('fofo_bec_dcb_disabled_blocks_activate');
delete_site_transient('fofo_bec_dcb_disabled_blocks_activate');

