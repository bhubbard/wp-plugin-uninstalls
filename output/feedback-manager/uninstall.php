<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('znfp_widgetID');
delete_site_option('znfp_widgetID');
delete_option('znfp_tab_color');
delete_site_option('znfp_tab_color');
delete_option('znfp_tab_text');
delete_site_option('znfp_tab_text');
delete_option('znfp_header_text');
delete_site_option('znfp_header_text');
delete_option('znfp_intro_text');
delete_site_option('znfp_intro_text');

