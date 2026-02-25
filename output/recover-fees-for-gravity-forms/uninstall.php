<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravityformsaddon_gravityrecoverfees_settings');
delete_site_option('gravityformsaddon_gravityrecoverfees_settings');

