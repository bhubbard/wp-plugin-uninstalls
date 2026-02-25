<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatabird_app_id');
delete_site_option('chatabird_app_id');
delete_option('chatabird_identity_key');
delete_site_option('chatabird_identity_key');
delete_option('chatabird_enable_logging');
delete_site_option('chatabird_enable_logging');

