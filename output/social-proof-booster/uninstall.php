<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spbp_enabled');
delete_site_option('spbp_enabled');
delete_option('spbp_popup_delay');
delete_site_option('spbp_popup_delay');
delete_option('spbp_popup_bg_color');
delete_site_option('spbp_popup_bg_color');
delete_option('spbp_popup_position');
delete_site_option('spbp_popup_position');
delete_option('spbp_impressions');
delete_site_option('spbp_impressions');
delete_option('spbp_clicks');
delete_site_option('spbp_clicks');

