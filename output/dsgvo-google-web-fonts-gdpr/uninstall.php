<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DSGVOGWP_use_google_web_fonts');
delete_site_option('DSGVOGWP_use_google_web_fonts');
delete_option('DSGVOGWP_use_google_web_fonts_status');
delete_site_option('DSGVOGWP_use_google_web_fonts_status');
delete_option('DSGVOGWP_stylesheet');
delete_site_option('DSGVOGWP_stylesheet');

