<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ECF_BB_Plugin-notice');
delete_site_transient('ECF_BB_Plugin-notice');

