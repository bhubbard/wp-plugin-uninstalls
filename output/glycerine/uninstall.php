<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glycerine_api_key');
delete_site_option('glycerine_api_key');
delete_option('glycerine_iaw_base_url');
delete_site_option('glycerine_iaw_base_url');

