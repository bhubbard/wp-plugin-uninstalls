<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apti-display-activation-message');
delete_site_option('apti-display-activation-message');
delete_option('apti-display-uninstallation-message');
delete_site_option('apti-display-uninstallation-message');

