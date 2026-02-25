<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('supewp82_data');
delete_site_option('supewp82_data');
delete_option('supermarquee_lite_plugin_settings');
delete_site_option('supermarquee_lite_plugin_settings');

