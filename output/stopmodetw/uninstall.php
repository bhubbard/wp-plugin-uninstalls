<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TKP_STOPMODETW_maintenance_mode');
delete_site_option('TKP_STOPMODETW_maintenance_mode');
delete_option('TKP_STOPMODETW_maintenance_target');
delete_site_option('TKP_STOPMODETW_maintenance_target');
delete_option('TKP_STOPMODETW_custom_resources');
delete_site_option('TKP_STOPMODETW_custom_resources');
delete_option('TKP_STOPMODETW_custom_products');
delete_site_option('TKP_STOPMODETW_custom_products');
delete_option('TKP_STOPMODETW_maintenance_header');
delete_site_option('TKP_STOPMODETW_maintenance_header');
delete_option('TKP_STOPMODETW_maintenance_text');
delete_site_option('TKP_STOPMODETW_maintenance_text');
delete_option('TKP_STOPMODETW_maintenance_background');
delete_site_option('TKP_STOPMODETW_maintenance_background');
delete_option('TKP_STOPMODETW_maintenance_background_image');
delete_site_option('TKP_STOPMODETW_maintenance_background_image');
delete_option('TKP_STOPMODETW_maintenance_logo');
delete_site_option('TKP_STOPMODETW_maintenance_logo');
delete_option('TKP_STOPMODETW_maintenance_container_background');
delete_site_option('TKP_STOPMODETW_maintenance_container_background');
delete_option('TKP_STOPMODETW_header_font_size');
delete_site_option('TKP_STOPMODETW_header_font_size');
delete_option('TKP_STOPMODETW_header_color');
delete_site_option('TKP_STOPMODETW_header_color');
delete_option('TKP_STOPMODETW_header_font');
delete_site_option('TKP_STOPMODETW_header_font');
delete_option('TKP_STOPMODETW_text_font_size');
delete_site_option('TKP_STOPMODETW_text_font_size');
delete_option('TKP_STOPMODETW_text_color');
delete_site_option('TKP_STOPMODETW_text_color');
delete_option('TKP_STOPMODETW_text_font');
delete_site_option('TKP_STOPMODETW_text_font');
delete_option('TKP_STOPMODETW_private_cookie_duration');
delete_site_option('TKP_STOPMODETW_private_cookie_duration');
delete_option('TKP_STOPMODETW_private_cookie_never_expire');
delete_site_option('TKP_STOPMODETW_private_cookie_never_expire');
delete_option('TKP_STOPMODETW_private_access_key');
delete_site_option('TKP_STOPMODETW_private_access_key');

