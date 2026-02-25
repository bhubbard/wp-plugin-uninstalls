<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('font-awesome-releases');
delete_site_transient('font-awesome-releases');
delete_transient('font-awesome-last-used-release');
delete_site_transient('font-awesome-last-used-release');

