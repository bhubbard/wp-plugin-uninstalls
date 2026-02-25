<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatics_url');
delete_site_option('chatics_url');
delete_option('chatics_enabled');
delete_site_option('chatics_enabled');
delete_option('chatics_position');
delete_site_option('chatics_position');
delete_option('chatics_title');
delete_site_option('chatics_title');
delete_option('chatics_color');
delete_site_option('chatics_color');
delete_option('chatics_icon_type');
delete_site_option('chatics_icon_type');
delete_option('chatics_icon_text');
delete_site_option('chatics_icon_text');
delete_option('chatics_icon_url');
delete_site_option('chatics_icon_url');
delete_option('chatics_zoom');
delete_site_option('chatics_zoom');
delete_option('chatics_allowed_days');
delete_site_option('chatics_allowed_days');
delete_option('chatics_start_time');
delete_site_option('chatics_start_time');
delete_option('chatics_end_time');
delete_site_option('chatics_end_time');
delete_option('chatics_header_enabled');
delete_site_option('chatics_header_enabled');

