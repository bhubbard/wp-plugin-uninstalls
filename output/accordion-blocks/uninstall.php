<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accordion_blocks_defaults');
delete_site_option('accordion_blocks_defaults');
delete_option('accordion_blocks_load_scripts_globally');
delete_site_option('accordion_blocks_load_scripts_globally');
delete_option('accordion_blocks_load_scripts_globablly');
delete_site_option('accordion_blocks_load_scripts_globablly');

