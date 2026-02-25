<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qrtnwp-backup-users_can_register');
delete_site_option('qrtnwp-backup-users_can_register');

