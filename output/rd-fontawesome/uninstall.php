<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('rd-fontawesome-nonce');
delete_site_transient('rd-fontawesome-nonce');

