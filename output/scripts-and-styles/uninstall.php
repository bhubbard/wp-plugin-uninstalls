<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ScriptsAndStylesBySL_scripts_head_option');
delete_site_option('ScriptsAndStylesBySL_scripts_head_option');
delete_option('ScriptsAndStylesBySL_scripts_footer_option');
delete_site_option('ScriptsAndStylesBySL_scripts_footer_option');
delete_option('ScriptsAndStylesBySL_styles_option');
delete_site_option('ScriptsAndStylesBySL_styles_option');

