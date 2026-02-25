<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('border_hadith_color');
delete_site_option('border_hadith_color');
delete_option('border_hadith_bloc');
delete_site_option('border_hadith_bloc');
delete_option('background_hadith_bloc');
delete_site_option('background_hadith_bloc');
delete_option('color_hadith_ref');
delete_site_option('color_hadith_ref');
delete_option('background_hadith_ref');
delete_site_option('background_hadith_ref');
delete_option('hadith_custum_css');
delete_site_option('hadith_custum_css');

