<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsociline_fonts');
delete_site_option('wpsociline_fonts');
delete_option('wpsociline_popupbox_height');
delete_site_option('wpsociline_popupbox_height');
delete_option('wpsociline_popupbox_border');
delete_site_option('wpsociline_popupbox_border');
delete_option('wpsociline_popupbox_bordercolor');
delete_site_option('wpsociline_popupbox_bordercolor');
delete_option('wpsociline_popupbox_borderradius');
delete_site_option('wpsociline_popupbox_borderradius');
delete_option('wpsociline_popupbox_icon');
delete_site_option('wpsociline_popupbox_icon');
delete_option('wpsociline_notification_icon_bgcolor');
delete_site_option('wpsociline_notification_icon_bgcolor');
delete_option('wpsociline_popupbox_rightoffset');
delete_site_option('wpsociline_popupbox_rightoffset');
delete_option('wpsociline_boxshadow_offset');
delete_site_option('wpsociline_boxshadow_offset');
delete_option('wpsociline_blurradius');
delete_site_option('wpsociline_blurradius');
delete_option('wpsociline_spreadraius');
delete_site_option('wpsociline_spreadraius');
delete_option('wpsociline_boxshadow_color');
delete_site_option('wpsociline_boxshadow_color');
delete_option('wpsociline_popup_state');
delete_site_option('wpsociline_popup_state');
delete_option('wpsociline_userid');
delete_site_option('wpsociline_userid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_licensed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

