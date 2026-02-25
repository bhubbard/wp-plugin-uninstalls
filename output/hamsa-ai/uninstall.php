<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hamsa_api_key');
delete_site_option('hamsa_api_key');

// Delete Transients
delete_transient('hamsa_ai_notifications');
delete_site_transient('hamsa_ai_notifications');

