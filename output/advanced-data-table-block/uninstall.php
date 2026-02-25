<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advadata_plugin_version');
delete_site_option('advadata_plugin_version');
delete_option('advadata_activation_time');
delete_site_option('advadata_activation_time');

