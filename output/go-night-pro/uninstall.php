<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('go_night_pro_images');
delete_site_option('go_night_pro_images');
delete_option('go_night_pro_advanced');
delete_site_option('go_night_pro_advanced');
delete_option('go_night_pro_button');
delete_site_option('go_night_pro_button');
delete_option('go_night_pro_colors');
delete_site_option('go_night_pro_colors');
delete_option('go_night_pro_customcss');
delete_site_option('go_night_pro_customcss');
delete_option('go_night_pro_general');
delete_site_option('go_night_pro_general');
delete_option('go_night_pro_typography');
delete_site_option('go_night_pro_typography');

