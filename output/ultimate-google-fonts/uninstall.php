<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ugfonts_fonts');
delete_site_option('ugfonts_fonts');
delete_option('ugfonts_css');
delete_site_option('ugfonts_css');

