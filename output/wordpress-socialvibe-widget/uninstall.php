<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socialvibe_flash_id');
delete_site_option('socialvibe_flash_id');
delete_option('socialvibe_user_id');
delete_site_option('socialvibe_user_id');
delete_option('socialvibe_width');
delete_site_option('socialvibe_width');
delete_option('socialvibe_widget_title');
delete_site_option('socialvibe_widget_title');
delete_option('socialvibe_height');
delete_site_option('socialvibe_height');
delete_option('socialvibe_noflash');
delete_site_option('socialvibe_noflash');
delete_option('socialvibe_widget_display');
delete_site_option('socialvibe_widget_display');
delete_option('socialvibe_color_mode');
delete_site_option('socialvibe_color_mode');

