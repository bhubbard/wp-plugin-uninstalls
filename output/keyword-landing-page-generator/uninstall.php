<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsos_klpg_custom_HTML');
delete_site_option('wpsos_klpg_custom_HTML');
delete_option('wpsos_klpg_keywords');
delete_site_option('wpsos_klpg_keywords');
delete_option('wpsos_klpg_settings');
delete_site_option('wpsos_klpg_settings');

