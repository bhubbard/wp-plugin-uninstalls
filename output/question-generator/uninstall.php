<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api_qg_key');
delete_site_option('api_qg_key');
delete_option('qg_validation');
delete_site_option('qg_validation');

