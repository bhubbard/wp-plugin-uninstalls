<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aft_db_version');
delete_site_option('aft_db_version');
delete_option('aft_themes_array');
delete_site_option('aft_themes_array');
delete_option('aft_options_array');
delete_site_option('aft_options_array');
delete_option('aft_options_by_array');
delete_site_option('aft_options_by_array');

