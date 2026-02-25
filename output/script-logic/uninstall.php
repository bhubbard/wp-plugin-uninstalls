<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sb_registered_scripts');
delete_site_option('sb_registered_scripts');
delete_option('sb_registered_styles');
delete_site_option('sb_registered_styles');
delete_option('sb_scriptlogic');
delete_site_option('sb_scriptlogic');

