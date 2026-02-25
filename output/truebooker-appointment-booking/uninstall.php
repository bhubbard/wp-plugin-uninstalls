<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('truebooker_db_version');
delete_site_option('truebooker_db_version');
delete_option('truebooker_skin_color');
delete_site_option('truebooker_skin_color');
delete_option('truebooker_dark_color');
delete_site_option('truebooker_dark_color');
delete_option('truebooker_body_color');
delete_site_option('truebooker_body_color');
delete_option('truebooker_white_color');
delete_site_option('truebooker_white_color');
delete_option('truebooker_black_color');
delete_site_option('truebooker_black_color');
delete_option('truebooker_cl_lightdark');
delete_site_option('truebooker_cl_lightdark');
delete_option('truebooker_gray_color');
delete_site_option('truebooker_gray_color');
delete_option('truebooker_border_color');
delete_site_option('truebooker_border_color');
delete_option('truebooker_active_skin');
delete_site_option('truebooker_active_skin');
delete_option('truebooker_font_family');
delete_site_option('truebooker_font_family');

