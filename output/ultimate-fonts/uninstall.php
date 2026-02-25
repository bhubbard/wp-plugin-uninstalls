<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimate_fonts_customize');
delete_site_option('ultimate_fonts_customize');
delete_option('ultimate-fonts');
delete_site_option('ultimate-fonts');
delete_option('ultimate_fonts');
delete_site_option('ultimate_fonts');

