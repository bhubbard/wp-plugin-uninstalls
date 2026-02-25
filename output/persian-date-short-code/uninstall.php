<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WP_EX_FONTS_LIST');
delete_site_option('WP_EX_FONTS_LIST');
delete_option('eepds_persian_date_shortcode_option');
delete_site_option('eepds_persian_date_shortcode_option');

