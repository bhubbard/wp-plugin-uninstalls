<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('imue_notification');
delete_site_transient('imue_notification');
delete_transient('meta_keys');
delete_site_transient('meta_keys');

