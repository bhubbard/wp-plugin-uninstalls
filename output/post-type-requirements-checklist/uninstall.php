<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aptrc-display-activation-message');
delete_site_option('aptrc-display-activation-message');
delete_option('aptrc-display-uninstallation-message');
delete_site_option('aptrc-display-uninstallation-message');

