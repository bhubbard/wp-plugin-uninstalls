<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wikimedia-commons-potd-file');
delete_site_transient('wikimedia-commons-potd-file');

