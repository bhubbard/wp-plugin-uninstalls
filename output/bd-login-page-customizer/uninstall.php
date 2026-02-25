<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdplpc_background_color');
delete_site_option('bdplpc_background_color');
delete_option('bdplpc_bg_image_url');
delete_site_option('bdplpc_bg_image_url');
delete_option('bdplpc_logo_url');
delete_site_option('bdplpc_logo_url');
delete_option('bdplpc_form_background_color');
delete_site_option('bdplpc_form_background_color');
delete_option('bdplpc_header_url');
delete_site_option('bdplpc_header_url');

