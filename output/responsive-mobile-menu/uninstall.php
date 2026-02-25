<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbb_ocm_trigger_icon');
delete_site_option('wbb_ocm_trigger_icon');
delete_option('wbb_ocm_css_selector');
delete_site_option('wbb_ocm_css_selector');
delete_option('wbb_ocm_background');
delete_site_option('wbb_ocm_background');
delete_option('wbb_ocm_background_hover');
delete_site_option('wbb_ocm_background_hover');
delete_option('wbb_ocm_borders');
delete_site_option('wbb_ocm_borders');
delete_option('wbb_ocm_font_color');
delete_site_option('wbb_ocm_font_color');
delete_option('wbb_ocm_font_color_hover');
delete_site_option('wbb_ocm_font_color_hover');
delete_option('wbb_ocm_font_family');
delete_site_option('wbb_ocm_font_family');
delete_option('wbb_ocm_devices_desktop');
delete_site_option('wbb_ocm_devices_desktop');
delete_option('wbb_ocm_devices_laptop');
delete_site_option('wbb_ocm_devices_laptop');
delete_option('wbb_ocm_devices_tablet');
delete_site_option('wbb_ocm_devices_tablet');
delete_option('wbb_ocm_devices_mobile');
delete_site_option('wbb_ocm_devices_mobile');

