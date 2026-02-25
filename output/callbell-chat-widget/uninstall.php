<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('callbell-script-token');
delete_site_option('callbell-script-token');
delete_option('callbell-onboarding');
delete_site_option('callbell-onboarding');

