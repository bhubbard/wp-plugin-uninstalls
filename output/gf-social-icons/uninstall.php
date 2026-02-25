<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_social_icons_position_horizontally');
delete_site_option('gf_social_icons_position_horizontally');
delete_option('gf_social_icons_general_settings');
delete_site_option('gf_social_icons_general_settings');
delete_option('gf_social_icons_open_in_new_tab_settings');
delete_site_option('gf_social_icons_open_in_new_tab_settings');
delete_option('gf_social_icons_styles_setting');
delete_site_option('gf_social_icons_styles_setting');

