<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('pc_activated_plugin');
delete_site_transient('pc_activated_plugin');

