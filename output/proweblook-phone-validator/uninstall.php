<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prop-api-key-invalid');
delete_site_option('prop-api-key-invalid');
delete_option('propp_settings');
delete_site_option('propp_settings');

