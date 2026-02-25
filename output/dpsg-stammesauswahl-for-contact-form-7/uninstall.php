<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7stammesauswahl_plugin_options');
delete_site_option('cf7stammesauswahl_plugin_options');

