<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartdic_api_url');
delete_site_option('smartdic_api_url');
delete_option('smartdic_enable_popup');
delete_site_option('smartdic_enable_popup');
delete_option('smartdic_popup_theme');
delete_site_option('smartdic_popup_theme');
delete_option('smartdic_popup_position');
delete_site_option('smartdic_popup_position');

