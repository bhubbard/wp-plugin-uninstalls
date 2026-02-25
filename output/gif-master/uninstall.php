<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gifm_tenor_api');
delete_site_option('gifm_tenor_api');
delete_option('gifm_giphy_api');
delete_site_option('gifm_giphy_api');

