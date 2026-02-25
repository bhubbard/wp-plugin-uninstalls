<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('oxyplug_preload_updated');
delete_site_transient('oxyplug_preload_updated');

