<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TSCSmsSettings');
delete_site_option('TSCSmsSettings');
delete_option('TSCSmsSettingsApi');
delete_site_option('TSCSmsSettingsApi');

