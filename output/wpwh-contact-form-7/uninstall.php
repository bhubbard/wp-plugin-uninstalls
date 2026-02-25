<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wpwhcf7_preserved_files');
delete_site_transient('wpwhcf7_preserved_files');

