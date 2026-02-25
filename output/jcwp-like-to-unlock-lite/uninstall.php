<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgltu_active');
delete_site_option('jcorgltu_active');
delete_option('jcorgltu_facebook_app_id');
delete_site_option('jcorgltu_facebook_app_id');
delete_option('jcorgltu_show_faces');
delete_site_option('jcorgltu_show_faces');
delete_option('jcorgltu_width');
delete_site_option('jcorgltu_width');
delete_option('jcorgltu_font');
delete_site_option('jcorgltu_font');
delete_option('jcorgltu_colorscheme');
delete_site_option('jcorgltu_colorscheme');
delete_option('jcorgltu_hide');
delete_site_option('jcorgltu_hide');
delete_option('jcorgltu_text_to_display');
delete_site_option('jcorgltu_text_to_display');
delete_option('jcorgltu_disableon_mobile');
delete_site_option('jcorgltu_disableon_mobile');
delete_option('jcorgltu_disableon_tablet');
delete_site_option('jcorgltu_disableon_tablet');

