<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kw_cssad');
delete_site_option('kw_cssad');
delete_option('kw_eadt');
delete_site_option('kw_eadt');
delete_option('kw_adt');
delete_site_option('kw_adt');
delete_option('kw_top_target');
delete_site_option('kw_top_target');
delete_option('kw_top_height');
delete_site_option('kw_top_height');
delete_option('kw_eadl');
delete_site_option('kw_eadl');
delete_option('kw_adl');
delete_site_option('kw_adl');
delete_option('kw_left_target');
delete_site_option('kw_left_target');
delete_option('kw_left_width');
delete_site_option('kw_left_width');
delete_option('kw_eadr');
delete_site_option('kw_eadr');
delete_option('kw_adr');
delete_site_option('kw_adr');
delete_option('kw_right_target');
delete_site_option('kw_right_target');
delete_option('kw_right_width');
delete_site_option('kw_right_width');

