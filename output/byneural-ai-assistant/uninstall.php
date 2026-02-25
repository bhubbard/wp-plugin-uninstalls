<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('byneuralaiassistants_plugin_enable_api');
delete_site_option('byneuralaiassistants_plugin_enable_api');
delete_option('byneuralaiassistants_wc_api_client');
delete_site_option('byneuralaiassistants_wc_api_client');

