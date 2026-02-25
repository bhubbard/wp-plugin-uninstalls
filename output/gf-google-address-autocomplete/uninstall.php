<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pc_gf_google_api_key');
delete_site_option('pc_gf_google_api_key');
delete_option('pcafe_load_with_async');
delete_site_option('pcafe_load_with_async');

