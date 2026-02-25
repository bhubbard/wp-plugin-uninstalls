<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_google_fonts_option1');
delete_site_option('custom_google_fonts_option1');
delete_option('custom_google_fonts_option2');
delete_site_option('custom_google_fonts_option2');
delete_option('custom_google_fonts_option3');
delete_site_option('custom_google_fonts_option3');
delete_option('custom_google_fonts_option4');
delete_site_option('custom_google_fonts_option4');
delete_option('custom_google_fonts_option5');
delete_site_option('custom_google_fonts_option5');
delete_option('custom_google_fonts_option6');
delete_site_option('custom_google_fonts_option6');

