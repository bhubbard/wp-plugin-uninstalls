<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('web4realty_idx_api_key');
delete_site_option('web4realty_idx_api_key');
delete_option('w4r_api_key');
delete_site_option('w4r_api_key');

