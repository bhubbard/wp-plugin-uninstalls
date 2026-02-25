<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdme_wpmapmaker_api_key');
delete_site_option('pdme_wpmapmaker_api_key');

