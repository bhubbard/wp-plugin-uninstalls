<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ew2bc-errors');
delete_site_transient('ew2bc-errors');
delete_transient('ew2bc-updated');
delete_site_transient('ew2bc-updated');

