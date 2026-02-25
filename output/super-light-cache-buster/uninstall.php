<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slcb_plugin_state');
delete_site_option('slcb_plugin_state');
delete_option('slcb_intensity_level');
delete_site_option('slcb_intensity_level');
delete_option('slcb_version_name');
delete_site_option('slcb_version_name');

