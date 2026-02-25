<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide-thumbnails-option');
delete_site_option('hide-thumbnails-option');
delete_option('hide_thumbnails_plugin_do_activation_redirect');
delete_site_option('hide_thumbnails_plugin_do_activation_redirect');

