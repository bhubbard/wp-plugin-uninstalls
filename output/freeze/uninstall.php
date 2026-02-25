<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('freeze_key');
delete_site_transient('freeze_key');
delete_transient('freeze_update_available');
delete_site_transient('freeze_update_available');

