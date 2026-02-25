<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flying_scripts_disabled_pages');
delete_site_option('flying_scripts_disabled_pages');
delete_option('flying_scripts_include_list');
delete_site_option('flying_scripts_include_list');
delete_option('FLYING_SCRIPTS_VERSION');
delete_site_option('FLYING_SCRIPTS_VERSION');
delete_option('flying_scripts_timeout');
delete_site_option('flying_scripts_timeout');

