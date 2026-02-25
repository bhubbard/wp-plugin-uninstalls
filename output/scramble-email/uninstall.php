<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scem_parse_content');
delete_site_option('scem_parse_content');
delete_option('scem_zone');
delete_site_option('scem_zone');
delete_option('scem_posttype');
delete_site_option('scem_posttype');

