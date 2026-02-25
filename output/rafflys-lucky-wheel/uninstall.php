<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rafflys_config');
delete_site_option('rafflys_config');
delete_option('rafflys_api_key');
delete_site_option('rafflys_api_key');

